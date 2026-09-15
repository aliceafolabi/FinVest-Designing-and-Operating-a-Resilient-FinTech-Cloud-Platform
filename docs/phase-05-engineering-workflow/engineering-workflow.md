# FinVest — GitHub Repository & Engineering Workflow

## 1. Purpose

This phase defines the engineering workflow that will be used to develop, manage, review, secure, and document the FinVest platform throughout the project lifecycle.

The objective is to establish a controlled and reproducible software engineering process before infrastructure and application implementation progresses further.

The workflow is designed to support:

- Controlled changes to the codebase
- Traceable engineering decisions
- Consistent Git practices
- Safe collaboration and review
- Protection of the production branch
- Separation of application, infrastructure, and documentation changes
- Secure handling of credentials and sensitive configuration
- Clear evidence of implementation and validation

Although FinVest is being developed as an individual portfolio project, the workflow follows practices that can scale to a professional engineering team.

---

## 2. Repository Objectives

The FinVest repository will serve as the central source of truth for:

- Application source code
- Infrastructure as Code
- Kubernetes configuration
- CI/CD configuration
- Security configuration
- Monitoring and observability configuration
- Technical documentation
- Architecture diagrams
- Testing configuration
- Engineering decisions
- Validation evidence

The repository should make it possible for another engineer to understand:

1. What FinVest is
2. What business problems it addresses
3. How the system is designed
4. How the infrastructure is provisioned
5. How the application is deployed
6. How security is implemented
7. How the system is monitored
8. How failures are handled
9. How changes are introduced and validated

---

## 3. Repository Structure

The repository will follow a structured organization as the project develops.

```text
FinVest/
│
├── README.md
│
├── docs/
│   ├── phase-01-business-case/
│   ├── phase-02-requirements/
│   ├── phase-03-architecture/
│   ├── phase-04-threat-model/
│   ├── phase-05-engineering-workflow/
│   ├── phase-06-local-development/
│   ├── phase-07-linux/
│   ├── phase-08-aws-security-foundation/
│   ├── phase-09-networking/
│   └── ...
│
├── application/
│   ├── frontend/
│   ├── backend/
│   └── workers/
│
├── infrastructure/
│   └── terraform/
│
├── kubernetes/
│
├── scripts/
│
├── tests/
│
└── .github/
    ├── workflows/
    ├── ISSUE_TEMPLATE/
    └── PULL_REQUEST_TEMPLATE.md
