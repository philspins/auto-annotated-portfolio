# Terraform – AWS Infrastructure

This directory contains a Terraform project that provisions the following AWS infrastructure for the **auto-annotated-portfolio** Next.js application.

## Architecture

```
Internet
   │
   ▼
[ALB] ── HTTPS/HTTP ──▶ [EC2 t2.micro]
                              │
                              ▼
                    [Aurora PostgreSQL]
```

| Resource | Details |
|---|---|
| VPC | Custom VPC with public + private subnets across 2 AZs |
| Security groups | ALB (80/443 public), EC2 (80/443 from ALB + 22 SSH), Aurora (5432 from EC2) |
| EC2 | `t2.micro` (free-tier) in a public subnet, Amazon Linux 2023 |
| Target Group | HTTP:80, health-check on `/` |
| ALB | Internet-facing, routes HTTP (and optionally HTTPS) to the target group |
| Aurora PostgreSQL | Multi-AZ capable cluster (`aurora-postgresql` engine, version 15.4) in private subnets |

## Prerequisites

* [Terraform](https://developer.hashicorp.com/terraform/install) ≥ 1.5
* AWS credentials configured (`aws configure` or environment variables)
* An existing EC2 key pair (optional, for SSH access)
* An ACM certificate ARN (optional, for HTTPS)

## Quick Start

```bash
cd terraform

# 1. Initialise providers
terraform init

# 2. Review planned changes
terraform plan \
  -var="db_password=<your-secure-password>"

# 3. Apply
terraform apply \
  -var="db_password=<your-secure-password>"
```

## Input Variables

| Name | Default | Description |
|---|---|---|
| `aws_region` | `us-east-1` | AWS region |
| `project_name` | `portfolio` | Prefix for resource names |
| `environment` | `dev` | Deployment environment |
| `vpc_cidr` | `10.0.0.0/16` | VPC CIDR block |
| `public_subnet_cidrs` | `["10.0.1.0/24","10.0.2.0/24"]` | Public subnet CIDRs |
| `private_subnet_cidrs` | `["10.0.11.0/24","10.0.12.0/24"]` | Private subnet CIDRs |
| `ami_id` | `""` (auto-resolved) | AMI for the EC2 instance – blank resolves to latest Amazon Linux 2023 |
| `instance_type` | `t2.micro` | EC2 instance type |
| `key_name` | `""` | EC2 key pair name (optional) |
| `ssh_cidr_blocks` | `[]` (no SSH) | CIDR list allowed to SSH, e.g. `["1.2.3.4/32"]` |
| `certificate_arn` | `""` | ACM certificate ARN (optional HTTPS) |
| `db_name` | `portfolio` | Initial Aurora database name |
| `db_username` | `dbadmin` | Aurora master username |
| `db_password` | _(required)_ | Aurora master password |
| `db_instance_class` | `db.t3.medium` | Aurora instance class |

### Using a `terraform.tfvars` file

Create a `terraform.tfvars` file (never commit it to source control):

```hcl
aws_region      = "us-east-1"
project_name    = "portfolio"
environment     = "dev"
key_name        = "my-key-pair"
certificate_arn = "arn:aws:acm:us-east-1:123456789012:certificate/xxxx"
db_password     = "Super$ecureP4ssw0rd!"
```

## Outputs

| Name | Description |
|---|---|
| `vpc_id` | VPC ID |
| `public_subnet_ids` | Public subnet IDs |
| `private_subnet_ids` | Private subnet IDs |
| `ec2_instance_id` | EC2 instance ID |
| `ec2_public_ip` | EC2 public IP |
| `alb_dns_name` | ALB DNS name (point your domain here) |
| `alb_zone_id` | ALB hosted zone ID (for Route 53 alias) |
| `aurora_cluster_endpoint` | Aurora writer endpoint |
| `aurora_cluster_reader_endpoint` | Aurora reader endpoint |
| `aurora_database_name` | Aurora initial database name |

## Security Notes

* SSH ingress is **disabled by default** (`ssh_cidr_blocks = []`). Enable it by setting `ssh_cidr_blocks = ["<your-ip>/32"]` together with a valid `key_name`.
* `deletion_protection` and `skip_final_snapshot` are set to development-friendly values. Enable `deletion_protection = true` and disable `skip_final_snapshot` for production.
* Store `db_password` in AWS Secrets Manager or a secrets backend rather than plain `tfvars` for production.

## Tear Down

```bash
terraform destroy \
  -var="db_password=<your-secure-password>"
```
