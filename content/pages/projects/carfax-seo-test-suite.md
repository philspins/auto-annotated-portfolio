---
type: ProjectLayout
title: Carfax SEO Test Suite
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2019-08-01'
client: Carfax
description: >-
  Built a Go-based SEO crawling and test evaluation system backed by AWS ECS, S3, and DynamoDB, with a React dashboard for analysts to view results and schedule new crawl runs.
featuredImage:
  type: ImageBlock
  url: /images/seo.png
  altText: Carfax SEO Test Suite
media:
  type: ImageBlock
  url: /images/seo.png
  altText: Carfax SEO Test Suite
addTitleSuffix: true
---

The SEO Test Suite is a tool that enables Carfax's SEO analysts to continuously validate the health of the public Carfax website's search optimization. It crawls the site, scrapes critical SEO elements, runs a configurable set of validation tests against them, and surfaces the results in a dashboard where analysts can investigate failures and trigger new test runs on demand.

I built the Go implementation of this system, replacing an earlier Python-based tool and expanding it into a proper distributed pipeline. Working on this project was a great opportunity to learn about some great features of Go such as channels and Goroutines, along with Go concurrency patterns such as semaphores.

## Architecture

The system is made up of four components, all managed by Terraform:

**Crawler** — A Go service that crawls the Carfax website and scrapes critical SEO elements from each page. It runs on **AWS ECS**, managed by **AWS Batch**, which handles scheduling and concurrency. Scraped data is stored in **S3**.

**Rules Engine** — A second Go component that reads the scraped data from S3, runs the configured test evaluations against it, and writes results to **DynamoDB**.

**API** — A Go API sitting behind **AWS API Gateway** that the dashboard calls to fetch results from DynamoDB or to initiate new batch crawl jobs on demand.

**Dashboard** — A **React** frontend where analysts can browse test results by page and test type, identify failures, and schedule new crawl runs without needing to touch any infrastructure directly.

## Why This Architecture

Separating the crawl and evaluation steps into distinct components meant each could be scaled, retried, and updated independently. Running the crawler on ECS via Batch provided automatic parallelism and retry handling without building a custom job queue. Storing raw scraped data in S3 before evaluation also meant that if the evaluation logic changed, historical crawl data could be re-evaluated without re-crawling the site.

## Technologies Used

Go, React, AWS ECS, AWS Batch, AWS API Gateway, S3, DynamoDB, Terraform
