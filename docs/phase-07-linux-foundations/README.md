# Phase 7: Linux System Foundations

## Objective
Establish robust Linux administration skills tailored for cloud infrastructure, permission management, and secure remote server operations for the FinVest platform.

## Business Problem
Every later phase of FinVest — Docker, Kubernetes, Terraform, AWS CLI, CI/CD — depends on operator fluency in a Linux command-line environment. Weak Linux fundamentals translate directly into slower incident diagnosis, misconfigured permissions, and operational risk in production.

## Key Focus Areas

### File System & Permissions ✅ Verified
Diagnosed and resolved a `Permission denied` error on an executable script by inspecting the permission bitmask (`ls -la`) and correcting it with `chmod`. Confirmed numeric permission modes (`755`, `644`, `600`) and their use cases, including the `600`/`400` requirement for SSH private keys used in later AWS phases.

### Process & Service Management ✅ Verified
Started a background process (`sleep 300 &`), identified it via `ps aux`, and terminated it cleanly with `kill <PID>`, confirming termination via a follow-up process check. Noted the distinction between `SIGTERM` (default, graceful) and `SIGKILL` (`kill -9`, forced) for future incident-response scenarios.

### Environment Variable Persistence ✅ Verified
Demonstrated that `export` scopes a variable to the current shell session only — confirmed by testing `echo $VAR` after a full session restart (returned empty). Fixed by adding the variable to `~/.bashrc`, then confirmed persistence across a fresh session. This directly informs how AWS CLI, Docker, and Terraform configuration will be made durable in later phases.

### Networking & SSH Security — Not yet covered
Planned for a follow-up Phase 7 session: key-based authentication, firewall configuration, secure remote tunneling.

## System Audit
Ran `sys-audit.sh` to capture disk usage, active users, and system uptime as a baseline operational snapshot.

**Diagnostic note:** `who` returned no output despite `uptime` reporting 2 active users — a known WSL limitation where the `utmp` session-tracking file isn't fully populated. Useful reminder that different diagnostic tools can disagree, and knowing *why* matters more than blindly trusting one output.

## Evidence
See `/evidence` folder in this directory for screenshots covering:
1. Environment verification and patch baseline
2. Permission diagnosis and fix (`Permission denied` → `chmod` → success)
3. Process management (`sleep` → `ps` → `kill` → confirmed terminated)
4. Environment variable persistence (`.bashrc` edit → reload → fresh-session confirmation)

