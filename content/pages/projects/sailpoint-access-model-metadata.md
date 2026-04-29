---
type: ProjectLayout
title: SailPoint Access Model Metadata
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2024-01-01'
client: SailPoint
description: >-
  Built the data layer and event pipeline for Access Model Metadata in SailPoint ISC — a Java Spring Boot library backed by DynamoDB, DynamoDB Streams, Lambda, and Kafka that enables dynamic access request rules based on custom attributes.
featuredImage:
  type: ImageBlock
  url: /images/sailpoint-amm.png
  altText: SailPoint Access Model Metadata
media:
  type: ImageBlock
  url: /images/sailpoint-amm.png
  altText: SailPoint Access Model Metadata
addTitleSuffix: true
---

Access Model Metadata (AMM) is a feature in [SailPoint Identity Security Cloud](https://www.sailpoint.com/products/identity-security-cloud) that lets administrators define custom attribute keys and values, then assign those attributes to access objects — Identities, Roles, and Entitlements. Those attributes in turn power a separate feature called Dynamic Access Requests, which lets administrators write rules that dynamically shape access requests based on attribute values.

A concrete example: a `Location` attribute assigned to both a user and an `Office Access` entitlement. When the user requests that entitlement, the system reads the user's location attribute and automatically determines which physical office they need access to — no manual routing required.

I developed the data layer and event pipeline that makes this work.

## Architecture

**Data layer** — Built in **Java Spring Boot** as a modular library, designed to be shared across the AMM service, the entitlement service, and the access profile/roles services rather than duplicated in each. Data is stored in **DynamoDB**.

**Event pipeline** — **DynamoDB Streams** captures changes to attribute data and feeds them into an **AWS Lambda** function, which publishes entity-level events to **Kafka** topics. Downstream services consume these topics to keep their own views of attribute data in sync and to populate the search index.

This decoupled approach means that any service interested in attribute changes subscribes to Kafka rather than polling the database directly, keeping the system scalable and consistent.

- [Feature Documentation](https://documentation.sailpoint.com/saas/help/access/metadata.html)
- [API Documentation](https://developer.sailpoint.com/docs/api/beta/access-model-metadata/)

## Technologies Used

Java, Spring Boot, DynamoDB, DynamoDB Streams, AWS Lambda, Kafka, SailPoint Identity Security Cloud platform
