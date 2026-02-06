---
type: ProjectLayout
title: Parts Data Consolidation Tool
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2015-03-01'
client: General Dynamics Land Systems - Canada
description: >-
  A powerful tool utilizing C++, C# and VBA code to aggregate disparate parts data sources into a single source of truth, saving users hours of research time for every search performed.
featuredImage:
  type: ImageBlock
  url: /images/bg1.jpg
  altText: Parts Data Tool
media:
  type: ImageBlock
  url: /images/bg1.jpg
  altText: Parts Data Tool
---

## Project Overview

In large organizations, parts data often exists across multiple systems—ERP databases, legacy systems, spreadsheets, and vendor catalogs. This project created a unified search tool that pulls data from all these sources and presents comprehensive results in a single user interface.

## Technical Challenge

Parts data was scattered across:
- Multiple database systems (Oracle, SQL Server)
- Legacy Access databases
- Excel spreadsheets maintained by different departments
- External government catalog

Finding complete information about a single part could take hours of manual research across these systems. The external government catalog was shipped monthly as a collection of CDs, backed by a proprietary database which was segmented across the CDs. Extracting the data required using the provided DLL to scrape the catalog, identify which tables contained the data required by our organization, and extracting the data into a relational database where we could join the dataset with local data extracted from our internal Oracle ERP.

When I completed the POC for this projct people were shouting with joy: **"Phil did it! He cracked the discs!"**

## Solution Architecture

The tool employs a multi-language architecture:
- **C++ Components**: High-performance data retrieval from proprietary government catalog
- **C# Middle Layer**: Data transformation and business logic
- **VBA Interface**: User-friendly Excel-based front end familiar to end users

## Key Features

- **Unified Search**: Single search box returns data from all connected sources
- **Smart Reconciliation**: Automatically resolves conflicts between data sources
- **Caching Layer**: Improves performance for frequently accessed parts
- **Export Capabilities**: Results can be exported for further analysis

## Impact

- Reduced average part research time from hours to minutes
- Improved data accuracy through automated cross-referencing
- Became an essential daily tool for procurement and logistics teams

## Technologies Used

- C++
- C#
- VBA (Excel)
- SQL Server
- Oracle Database
