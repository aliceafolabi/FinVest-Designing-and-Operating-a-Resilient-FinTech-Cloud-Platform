#!/bin/bash

echo '=== FinVest System Audit ==='
echo 'Checking disk usage...'
df -h

echo '=== Checking active users ==='
who

echo '=== Checking system uptime ==='
uptime
