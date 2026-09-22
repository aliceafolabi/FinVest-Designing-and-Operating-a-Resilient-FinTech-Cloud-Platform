FinVest — Threat Model & Risk Assessment
1. Purpose
This document identifies the major security threats and operational risks associated with the proposed FinVest architecture.

The threat model is based on the architecture defined in Phase 3 and is intended to guide security decisions during implementation.

The objective is to identify:

What could go wrong
What could be affected
How the risk could occur
The potential business impact
The controls required to reduce the risk
The threat model follows:

Asset → Threat → Vulnerability → Impact → Control → Validation

2. Threat Modeling Scope
The threat model covers the major components of the FinVest platform, including:

Internet-facing application traffic
CloudFront
AWS WAF
Load Balancer
Amazon EKS
Application containers
Amazon RDS
AWS networking
IAM
Secrets
CI/CD
Container images
Terraform infrastructure
Logs and audit records
Backups
Developer access
The model focuses on Cloud, DevOps, security, reliability, and operational risks.

Real financial transactions and real customer financial information are outside the scope of this project.

3. Assets
The following assets require protection.

3.1 Application
The FinVest frontend, backend/API, and supporting application services.

3.2 Database
The database containing simulated:

User/account information
Portfolio information
Transaction records
Transaction history
Application data
3.3 Credentials and Secrets
Sensitive information such as:

Database credentials
API keys
Access tokens
Application secrets
Deployment credentials
3.4 Cloud Infrastructure
AWS resources including:

VPC
EKS
RDS
IAM
Load Balancer
S3
Supporting services
3.5 Source Code
FinVest application and infrastructure source code stored in GitHub.

3.6 Container Images
Application images stored in Amazon ECR.

3.7 Infrastructure Configuration
Terraform configuration and state containing information about deployed infrastructure.

3.8 Logs and Audit Records
Application, infrastructure, security, and audit information required for investigation.

3.9 Backups
Database and infrastructure recovery information required to restore the platform.

4. Trust Boundaries
Trust boundaries identify where data or requests move between different levels of trust.

Boundary 1 — Internet to AWS
Internet
   |
   v
CloudFront / WAF
