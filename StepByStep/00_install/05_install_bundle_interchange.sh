#!/bin/bash
set -o verbose
LOG="log.bundle"
# perl -MCPAN -e 'install Bundle::Interchange'
# cpanp i Bundle::Interchange 2>&1 | tee ${LOG}
cpanp i Bundle::Interchange
