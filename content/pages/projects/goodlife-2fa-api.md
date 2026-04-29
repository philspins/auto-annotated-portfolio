---
type: ProjectLayout
title: Two-Factor Authentication API
colors: colors-b
backgroundImage:
  type: BackgroundImage
  url: /images/clouds.svg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 74
date: '2019-03-01'
client: GoodLife Fitness
description: >-
  Built and deployed a two-factor authentication API in C# to support the new GoodLife web experience, exposed through Azure API Gateway.
featuredImage:
  type: ImageBlock
  url: /images/tfa.jpg
  altText: Two-factor authentication API
media:
  type: ImageBlock
  url: /images/tfa.jpg
  altText: Two-factor authentication API
addTitleSuffix: true
---

As GoodLife Fitness rebuilt its member-facing web experience, the authentication layer needed to support two-factor authentication. I designed and built the 2FA API that the new web frontend would rely on, deploying it to Azure and exposing it through Azure API Gateway as a first-class managed service.

## The Problem

The existing authentication infrastructure had no second-factor support. The new web experience was being built with a modern frontend stack and needed a clean, documented API endpoint for 2FA — something that could be consumed easily by the frontend team without coupling them to internal implementation details.

## What I Built

- A C# 2FA API handling time-based one-time password (TOTP) generation and verification
- Azure cloud deployment with appropriate configuration for secrets and environment-specific settings
- Exposure via Azure API Gateway, giving the frontend team a stable, versioned endpoint with rate limiting and access control handled at the gateway layer
- Integration with the broader authentication flow so that 2FA was enforced at the right step in the login sequence

## Why API Gateway

Putting the service behind Azure API Gateway meant the frontend team got a clean contract with built-in throttling and monitoring, and the backend team could iterate on the underlying service without changing the public interface. It also centralized auth policy for the API surface rather than baking it into each individual service.

## Technologies Used

C#, .NET, Azure App Service, Azure API Management, TOTP, Azure DevOps
