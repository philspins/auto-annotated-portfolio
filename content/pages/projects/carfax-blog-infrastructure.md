---
type: ProjectLayout
title: Carfax Blog & Static Content Infrastructure
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2020-01-01'
client: Carfax
description: >-
  Managed AWS infrastructure for the Carfax Blog and About Us products, migrating CloudFormation to Terraform, establishing proper CI/CD, and upgrading the Aurora database.
featuredImage:
  type: ImageBlock
  url: /images/carfax-about.png
  altText: Carfax Blog Infrastructure
media:
  type: ImageBlock
  url: /images/carfax-about.png
  altText: Carfax Blog Infrastructure
addTitleSuffix: true
---

The [Carfax Blog](https://www.carfax.com/car-research) and [About Us](https://www.carfax.com/company/about) pages are public-facing WordPress sites that sit on the Carfax domain. I owned the AWS infrastructure that kept them running — and took on the project of significantly improving how that infrastructure was defined, deployed, and maintained.

## What I Did

### CloudFormation → Terraform Migration

The entire WordPress stack — running on AWS Elastic Beanstalk — was originally defined in CloudFormation. I rewrote it in Terraform/Terragrunt, which gave the team a cleaner, more readable infrastructure codebase and made it far easier to make changes safely. Along with the migration I established proper CI/CD pipelines so that infrastructure changes went through review and automated deployment rather than being applied manually.

### Aurora DB Upgrade

As part of the infrastructure improvements I performed a major version upgrade of the Aurora MySQL database backing the WordPress installations. This involved planning for minimal downtime, validating data integrity after the upgrade, and coordinating with the content team to schedule the maintenance window.

## Technologies Used

AWS Elastic Beanstalk, Aurora MySQL, WordPress, Terraform, CloudFormation, CI/CD pipelines
