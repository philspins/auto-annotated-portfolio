---
type: ProjectLayout
title: Carfax Business Directory
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2021-06-01'
client: Carfax
description: >-
  Led backend development for the Business Directory — a public-facing product where users can search for Carfax-partnered dealers and service shops and read verified reviews.
featuredImage:
  type: ImageBlock
  url: /images/carfax-directory.png
  altText: Carfax Business Directory
media:
  type: ImageBlock
  url: /images/carfax-directory.png
  altText: Carfax Business Directory
addTitleSuffix: true
---

The [Carfax Business Directory](https://www.carfax.com/Auto-Repair) is a section of the public Carfax website where consumers can search for dealerships and service shops that partner with Carfax and read verified reviews — effectively "Yelp for the car industry." I led the backend effort to build the infrastructure and API that powers it.

## Architecture

The backend API is written in **Kotlin** and exposes a **GraphQL** layer for the frontend to query. Data is served from an **OpenSearch** cluster hosted in AWS, which handles the geospatial and full-text search queries needed for a directory of this kind — find shops near me, filter by rating, search by name.

The GraphQL layer gave the frontend team flexibility to request exactly the fields they needed without requiring backend changes for every UI iteration, which was important given how actively the product was evolving during development.

## My Role

- Designed and implemented the Kotlin backend API and GraphQL schema
- Designed and implemented a Go-based data pipeline to ingest the raw data which our Data Platform team delivered to S3 and transform it into the correct schema for populating OpenSearch.
- Architected the OpenSearch data model for efficient dealer/shop search
- Built and managed the AWS infrastructure for the service
- Coordinated backend delivery alongside the frontend team's build of the consumer-facing interface

## Technologies Used

Kotlin, GraphQL, OpenSearch, AWS
