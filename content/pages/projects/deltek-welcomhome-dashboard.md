---
type: ProjectLayout
title: Deltek WelcomHome Project Management Dashboard
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2008-09-01'
client: General Dynamics Land Systems - Canada
description: >-
  Customization of Deltek WelcomHome dashboard tool using ColdFusion and SQL to integrate data from Oracle and MS SQL Server databases, providing unified project management reports.
featuredImage:
  type: ImageBlock
  url: /images/bg2.jpg
  altText: PM Dashboard
media:
  type: ImageBlock
  url: /images/bg2.jpg
  altText: PM Dashboard
---

## Project Overview

Project managers need visibility across multiple systems—financial, scheduling, resource management. This project customized the Deltek WelcomHome dashboard to pull data from disparate sources and present a unified view of project health and status.

## Business Challenge

GDLS-C used multiple systems for project management:
- **Oracle databases**: Financial and ERP data
- **Deltek Open Plan**: Project scheduling and resource data
- **Deltek Cobra**: For measuring costs and earned value management
- **Custom applications**: Various departmental tools

Project managers spent hours manually gathering data from these systems to create status reports. There was no single source of truth for project metrics.

## Solution Architecture

### Data Integration Layer
Using ColdFusion, developed connectors to:
- Query Oracle financial databases for budget and actuals
- Extract schedule data from Open Plan
- Collect cost and earned value data from Cobra
- Retrieve resource allocation information
- Pull risk and issue data from tracking systems

### Dashboard Customization
Created custom widgets and reports:
- Project health scorecards
- Budget vs. actual visualizations
- Schedule variance analysis
- Resource utilization charts
- Risk and issue summaries

### Real-Time Updates
- Scheduled data refresh processes
- On-demand refresh capabilities
- Alert system for threshold violations
- Drill-down to detailed data

## Technical Implementation

### ColdFusion Components (CFCs)
- Reusable data access components
- Business logic layer for calculations
- Caching for performance optimization
- Error handling and logging

### SQL Development
- Complex joins across Oracle and SQL Server
- Performance optimization through views and stored procedures
- Data transformation for consistent formatting
- Aggregation queries for summary metrics

### User Interface
- Customized Deltek WelcomHome portal layout
- Role-based dashboards for different user types
- Responsive design for various screen sizes
- Export capabilities (PDF, Excel)

## Key Features

### Executive Dashboard
- Portfolio overview across all projects
- High-level health indicators
- Critical issues and risks
- Resource constraints

### Project Manager Dashboard
- Detailed project metrics
- Earned value management (EVM) data
- Team resource status
- Action item tracking

### Functional Manager Dashboard
- Resource allocation across projects
- Team capacity planning
- Skills gap analysis
- Time tracking summaries

## Performance Optimization

Addressed performance challenges through:
- Query optimization and indexing
- Caching frequently accessed data
- Asynchronous data loading
- Database connection pooling

## Business Impact

- **Reduced reporting time** from hours to minutes
- **Improved decision-making** with real-time data
- **Enhanced visibility** across project portfolio
- **Better resource management** through unified view
- **Eliminated manual data consolidation**

## User Adoption

Strong adoption driven by:
- Significant time savings for project managers
- Consistent, reliable data
- Customizable views for different roles
- Mobile access for executives

## Technologies Used

- ColdFusion 5
- Oracle Database
- MS SQL Server
- Deltek WelcomHome
- HTML/CSS/JavaScript
- Chart libraries for visualizations
