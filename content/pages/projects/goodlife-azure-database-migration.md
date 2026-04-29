---
type: ProjectLayout
title: On-Prem SQL Server to Azure Migration
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2018-06-01'
client: GoodLife Fitness
description: >-
  Migrated on-premises SQL Server databases and SSIS jobs to Azure cloud, coordinating updates across all dependent C# APIs and managing a zero-downtime cutover deployment.
featuredImage:
  type: ImageBlock
  url: /images/azure-migration.png
  altText: Azure database migration project
media:
  type: ImageBlock
  url: /images/azure-migration.png
  altText: Azure database migration project
addTitleSuffix: true
---

GoodLife Fitness ran its data infrastructure on on-premises SQL Server instances with a fleet of SSIS jobs handling data pipelines for the commissions and compensation platform. Moving to Azure was a priority — reducing operational overhead, improving availability, and positioning the team to take advantage of managed cloud services. I led the migration end-to-end.

## The Challenge

A lift-and-shift of just the databases wasn't enough. The SSIS jobs had to be reworked to run in Azure (using Azure Data Factory and cloud-compatible connection strings), and every C# API that talked to the on-prem databases needed to be updated and redeployed. The tricky part was coordinating all of that as a single, coherent cutover rather than a patchwork of partial changes that would leave the system in an inconsistent state.

## What I Did

- Provisioned Azure SQL databases and migrated schemas and data from on-prem SQL Server instances
- Ported SSIS jobs to run in Azure, updating connection strings, credentials, and job scheduling
- Updated date fields to use UTC
- Audited all C# APIs for on-prem database dependencies and updated connection configuration across each service
- Coordinated a deployment plan that brought the new APIs and the migrated databases live simultaneously, avoiding a window where old APIs would be pointing at a database that had already moved
- Validated data integrity post-migration and monitored the platform through the initial stabilization period

## Outcome

The migration completed without data loss or extended downtime. Running on Azure reduced the operational burden of managing on-prem hardware and gave the team the elasticity to scale the data tier independently of the application layer.

## Technologies Used

Azure SQL Database, Azure Data Factory, SSIS, C#, .NET, Azure DevOps
