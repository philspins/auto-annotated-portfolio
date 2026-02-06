---
type: ProjectLayout
title: Packaging Database and BOM Generator
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2016-09-01'
client: General Dynamics Land Systems - Canada
description: >-
  Database application for tracking contractually required shipping data including item dimensions and characteristics, with automated packaging material calculations and bill of material generation.
featuredImage:
  type: ImageBlock
  url: /images/bg1.jpg
  altText: Packaging Database
media:
  type: ImageBlock
  url: /images/bg1.jpg
  altText: Packaging Database
---

## Project Overview

Military contracts often require detailed shipping and packaging data for every part supplied. This project normalized and rebuilt a legacy database application to help the Packaging team efficiently manage this requirement and automatically calculate packaging needs.

## Project Scope

- **Database Normalization**: Redesigned database schema to eliminate redundancy and improve data integrity
- **Data Migration**: Safely transferred legacy data to the new structure
- **Enhanced UI**: Created intuitive interfaces for data entry and search
- **Calculation Engine**: Automated packaging material requirements based on item characteristics

## Key Features

### Part Tracking
- Comprehensive catalog of contractually required parts
- Dimensional data (length, width, height, weight)
- Material characteristics and handling requirements
- Shipping classification information

### Automated Calculations
Based on entered dimensions and characteristics, the system:
- Recommends appropriate packaging materials
- Calculates required quantities of boxes, foam, and other materials
- Determines optimal packaging configuration
- Generates complete bill of materials for packaging

### Reporting
- Contract compliance reports
- Packaging material inventory requirements
- Cost projections for packaging materials

## Technical Improvements

The rebuild phase included:
- Normalization to third normal form
- Implementation of referential integrity
- Performance optimization through proper indexing
- Migration from Access to SQL Server backend

## Business Value

- Ensured contract compliance with shipping data requirements
- Reduced packaging design time from hours to minutes
- Minimized material waste through accurate calculations
- Provided cost visibility for packaging operations

## Technologies Used

- Microsoft Access (UI)
- SQL Server (Backend)
- VBA
- Crystal Reports
