# Projects

## Carfax

### Led backend efforts to build the infrastructure and API for the [Business Directory product](https://www.carfax.com/Auto-Repair) - a section of the public website where users can search for dealers or service shops that partner with Carfax and read verified reviews ("Yelp for the car industry")

- Go backend API was written in Kotlin with a GraphQL layer that fetched data from an OpenSearch cluster hosted in AWS

### Managed AWS infrastructure for the [Carfax Blog](https://www.carfax.com/car-research) and [About Us](https://www.carfax.com/company/about) products

- Rewote the CloudFormation code for deploying the whole Wordpress stack to ElasticBeanstalk in Terraform, created proper CI/CD
- Performed upgrade of Aurora DB

### Implemented "SEO Test Suite" using Go

- Based on a Python tool that crawls the Carfax website, scraping critical SEO elements and runs validation tests against them
- Results are shown on a React dashboard, where analysts are also able to schedule new test runs
- Go crawler runs on AWS ECS managed by AWS Batch, stores scraped data in S3 which is then analyzed by another Go component that runs the test evaluations and stores the results in DynamoDB
- Dashboard calls Go API through AWS API Gateway which fetches results from DynamoDB or initiates new batch jobs
- All infrastructure managed by Terraform

## Sailpoint

### Work Reassignment

- Developed Go API for a new [Sailpoint Identity Security Cloud](https://www.sailpoint.com/products/identity-security-cloud) feature called Work Reassignment
- Work Reassignment allows access request reviews, certifications, and manual provisioning tasks assigned to a user to be reassigned to a different user. This is primarily used for:
  -- Temporarily redirecting work for users who are out of office, such as on vacation or sick leave
  -- Permanently redirecting work for users who should not be assigned these tasks at all, such as senior executives or service identities
- See docs for more information:
  -- [Feature Documentation](https://documentation.sailpoint.com/saas/help/users/work_reassignment.html)
  -- [API Documentation](https://developer.sailpoint.com/docs/api/v2024/work-reassignment/)

### Access Model Metadata

- AMM feature allows users to create Attribute Keys and Values in ISC. Attribute values can then be assigned to various Access Objects such as Identities, Roles, and Entitlements. This enables a separate feature called Dynamic Access Requests, where administrators can create rules to dynamically generated requests based on attribute values. An example use case would be a Location attribute which is assigned to a user and an Entitlement. When a user requests the "Office Access" entitlement, the user's location can be used to dynamically determine which office they need access to.
- Developed data layer and event pipeline for this new feature which stores data in DynamoDB, uses DynamoDB Streams to pipe data into an AWS Lambda function which then publishes the entity topics to Kafka where they can be consumed by other users or used to populate the search index.
- The code for the data layer is fully implemented using Java Spring Boot, and is developed as a modular library that can be re-used by the AMM service, the entitlement service and the access profile/roles services.
- More information here:
  -- [Feature Documentation](https://documentation.sailpoint.com/saas/help/access/metadata.html)
  -- [API Documentation](https://developer.sailpoint.com/docs/api/beta/access-model-metadata/)
