---
type: ProjectLayout
title: OpenDocket
date: '2026-04-15'
client: Philtech
description: A Canadian civic transparency platform that aggregates parliamentary and legislative data — bills, votes, MP profiles, and campaign donations — into a clean, searchable format.
featuredImage:
  type: ImageBlock
  url: /images/opendocket.png
  altText: OpenDocket project thumbnail
  caption: ''
  elementId: 'opendocket'
media:
  type: ImageBlock
  url: /images/opendocket.png
  altText: OpenDocket civic transparency platform
  caption: ''
  elementId: ''
addTitleSuffix: true
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
---

OpenDocket (formerly known as Open Democracy) is a civic transparency platform I built to make Canadian parliamentary data more accessible to everyday citizens. It aggregates publicly available data from the federal Parliament and all ten provincial legislatures, presenting bills, votes, MP profiles, and sitting calendars in a clean, searchable interface.

The motivation was simple: government data is public, but it's scattered across dozens of poorly-designed websites. OpenDocket pulls it all together so that anyone can quickly look up how their elected representative voted on a given bill, or track the progress of legislation they care about.

## Tech Stack

OpenDocket runs on the GOAT stack — **Go**, **Templ**, **Alpine.js**, and **Tailwind CSS**. The backend is written in Go, the frontend uses the Templ templating engine with Alpine.js for interactivity, and the whole thing is styled with Tailwind. The database is SQLite running in WAL mode, which is more than sufficient for a read-heavy workload like this.

I also integrated the **Claude API** to power optional AI-generated bill summaries, making dense legislative text digestible for non-lawyers.

## Architecture

The project has three main components:

- **Crawler CLI** — fetches data from government sources and populates the database. Runs as a one-shot command or as a scheduled background job with configurable concurrency.
- **Web Server** — a read-only frontend that serves the aggregated data on a configured port.
- **Scheduler** — runs daily full crawls, frequent vote checks, and AI summarization jobs.

The database has six tables storing members, bills, divisions, votes, bill stages, and sitting calendars. Authentication is supported via OAuth (Google, Facebook) and email verification through AWS SES.

## Testing

The project includes 95 offline tests using Go's `httptest.Server` and temporary SQLite databases — no network dependencies required to run the full test suite.

## Links

- [GitHub Repository](https://github.com/philspins/opendocket)
- [Website](https://opendocket.ca)
