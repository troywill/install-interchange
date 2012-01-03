#!/bin/bash
set -o verbose
LOG="log.bundle"
date >> ${LOG}
# perl -MCPAN -e 'install Bundle::Interchange'
cpanp i Bundle::Interchange > ${LOG} 2>&1
date >> ${LOG}
