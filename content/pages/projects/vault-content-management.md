---
type: ProjectLayout
title: The Vault — Oracle UCM at GDLS-C
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2009-02-01'
client: General Dynamics Land Systems - Canada
description: >-
  Led Oracle UCM from initial proof of concept through full enterprise deployment, personally training 800+ employees on the system we branded internally as The Vault.
featuredImage:
  type: ImageBlock
  url: /images/oracle-ucm.png
  altText: The Vault — Oracle UCM at GDLS-C
media:
  type: ImageBlock
  url: /images/oracle-ucm.png
  altText: The Vault — Oracle UCM at GDLS-C
---

This project spanned three years and two distinct phases: a proof of concept in 2009 to validate Oracle UCM for engineering workflows, followed by a full enterprise deployment in 2012 that rolled the system out to the entire 800+ person organization under the internal brand name **The Vault**.

## Phase 1: Proof of Concept (2009)

Engineering change processes at GDLS-C required multiple reviews from various stakeholders, but the existing paper-based and email process was slow, error-prone, and lacked auditability. The Engineering Value Form (EVF) review process had accumulated years of friction:

- Paper routing causing delays and lost forms
- Email attachments creating version confusion
- No visibility into review status
- Missed reviews when stakeholders were unavailable
- No audit trail for compliance
- Manual tracking in spreadsheets

I built a proof of concept demonstrating how Oracle Universal Content Management could resolve these problems. Working with stakeholders, I documented the current-state workflow, defined reviewer roles and escalation procedures, and configured Oracle UCM end-to-end — content server setup, workflow routing rules, reviewer dashboards, and integration with engineering CAD systems and the parts database.

The PoC demonstrated a **60% reduction in review cycle time**, elimination of lost documents, and a complete audit trail. Engineering managers appreciated the visibility, reviewers liked the centralized queue, and the compliance team valued the audit trail. The recommendation was to proceed with full implementation.

## Phase 2: Enterprise Deployment (2012)

Three years later, I served as technical lead for the full enterprise rollout. The system — branded internally as **The Vault** — was deployed to the entire employee population of 800+ users, making it one of the larger change initiatives the department had undertaken.

### Technical Implementation

- User authentication via Active Directory
- Department-based folder structure with version control and check-in/check-out workflows
- Metadata schema for document classification
- Email and desktop integration for drag-and-drop functionality
- Backup and disaster recovery procedures

### Training Program

I personally delivered classroom-style training to all 800+ employees across multiple sessions, shifts, and locations. The curriculum was tiered by role:

- **Basic Users** — document upload, search, and retrieval
- **Power Users** — advanced workflows and metadata
- **Administrators** — system configuration and maintenance
- **Executives** — high-level overview and strategic benefits

I also established a train-the-trainer program for ongoing support after go-live.

### Outcomes

- Successful enterprise deployment with high adoption
- Improved document security and version control
- Better collaboration through a centralized content repository
- Reduced time spent searching for documents across siloed network drives

## Technologies Used

Oracle Universal Content Management (UCM) / Oracle WebCenter Content, Active Directory, Windows Server, SQL Server, LDAP, SMTP integration, enterprise search
