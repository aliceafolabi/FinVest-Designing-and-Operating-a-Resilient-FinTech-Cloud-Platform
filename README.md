# FinVest

## Cloud/DevOps Transformation of a Fintech Investment Platform

## Project Overview

FinVest is a fictional fintech investment platform used to demonstrate
the design and implementation of a secure, scalable, highly available,
observable, and automated cloud platform.

The project simulates the transformation of a growing fintech platform
from a simple application environment into a production-style AWS
Cloud/DevOps architecture.

> All financial activity is simulated. The project does not process
> real money or connect to real financial institutions.

---

## Business Problem

As FinVest grows, the platform faces challenges including:

- Traffic spikes
- Availability and single points of failure
- Manual deployments
- Difficult infrastructure reproduction
- Security risks
- Data protection requirements
- Transaction reliability
- Limited monitoring and observability
- Incident response challenges
- Disaster recovery requirements
- Cloud cost visibility
- Governance and capacity planning

The project addresses these challenges progressively through Cloud,
DevOps, security, reliability, and infrastructure engineering practices.

---

## Project Objectives

The transformation aims to create a platform that is:

- Scalable
- Highly available
- Secure
- Reliable
- Observable
- Recoverable
- Automated
- Cost-conscious
- Governed

---

## Technology Stack

### Cloud
- AWS

### Infrastructure
- Terraform
- VPC
- EC2 / supporting AWS services
- RDS
- S3

### Containers & Orchestration
- Docker
- Amazon ECR
- Kubernetes
- Amazon EKS

### CI/CD & DevSecOps
- GitHub Actions
- Container security scanning
- Infrastructure security scanning
- Secret detection

### Observability
- Amazon CloudWatch
- Prometheus
- Grafana

### Security
- IAM
- AWS Secrets Manager
- AWS KMS
- Security Groups
- Network isolation

### Testing & Reliability
- Load testing
- Autoscaling
- Backup and recovery testing
- Failure/chaos testing

---

## Architecture

The target architecture will progressively evolve toward:

**Users → CloudFront → WAF → Load Balancer → EKS → Application Services → Private Database**

Supporting services will be introduced where they solve an identified business or operational requirement.

> Architecture will evolve throughout the project and will be documented in detail in Phase 3.

---

## Engineering Approach

The project follows:

**Business Problem → Requirement → Technical Decision → Implementation → Testing → Evidence → Result**

Each technology is introduced because it addresses a specific business,
security, reliability, or operational requirement.

---

## Project Phases

| Phase | Area | Status |
|---|---|---|
| 01 | Business Case & Problem Definition | ✅ Completed |
| 02 | Requirements & Success Criteria |  ✅ Completed  |
| 03 | Architecture Design | ✅ Completed  |
| 04 | Threat Model & Risk Assessment | ✅ Completed  |
| 05 | GitHub Repository & Engineering Workflow | ⏳ Upcoming |
| ... | ... | ... |

The complete project roadmap and detailed implementation documentation
are maintained under the `docs/` directory.

---

## Documentation

Detailed project documentation:

- [Phase 1 — Business Case](docs/phase-01-business-case/business-case.md)
- [Phase 2 — Requirements](docs/phase-02-requirements/requirements.md)

Additional phase documentation will be added as the project progresses.

---

## Validation & Evidence

The project will include evidence from:

- Infrastructure deployments
- Application deployments
- CI/CD pipelines
- Security checks
- Monitoring dashboards
- Load tests
- Failure scenarios
- Scaling behavior
- Backup and restoration exercises
- Cost and governance controls

Final results will be documented after implementation and testing.

---

## Project Status

**Current phase:** Phase 2 — Requirements & Success Criteria

The business case has been established and the technical and operational
requirements are now being defined before architecture design begins.




