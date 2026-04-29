---
type: ProjectLayout
title: SailPoint Work Reassignment
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2022-08-01'
client: SailPoint
description: >-
  Developed the Go API powering Work Reassignment in SailPoint Identity Security Cloud — a feature that lets organizations redirect access reviews, certifications, and provisioning tasks between users.
featuredImage:
  type: ImageBlock
  url: /images/sailpoint-reassignment.png
  altText: SailPoint Work Reassignment
media:
  type: ImageBlock
  url: /images/sailpoint-reassignment.png
  altText: SailPoint Work Reassignment
addTitleSuffix: true
---

Work Reassignment is a feature of [SailPoint Identity Security Cloud](https://www.sailpoint.com/products/identity-security-cloud) that allows access request reviews, certifications, and manual provisioning tasks assigned to one user to be redirected to another. I developed the Go API that powers it.

## The Problem It Solves

In large organizations, identity governance workflows are constantly being assigned to specific users — reviewers, managers, approvers. When those users are unavailable or shouldn't be receiving those tasks at all, work piles up or goes unreviewed. Work Reassignment addresses two distinct scenarios:

- **Temporary reassignment** — redirecting work for users who are out of office due to vacation or sick leave
- **Permanent reassignment** — redirecting work away from users who should never be assigned these tasks, such as senior executives or service account identities

## What I Built

The backend Go API handles the full lifecycle of reassignment rules: creating, updating, querying, and deleting them, as well as applying the rules at the point work items are distributed across the system.

- [Feature Documentation](https://documentation.sailpoint.com/saas/help/users/work_reassignment.html)
- [API Documentation](https://developer.sailpoint.com/docs/api/v2024/work-reassignment/)

## Technologies Used

Go, SailPoint Identity Security Cloud platform, REST API design
