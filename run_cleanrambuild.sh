#!/bin/bash
# ======================================
#   Developed by Adrian DC - 2015-2017
# ======================================

# Usage: run_cleanrambuild.sh (Build RAM processes cleanup)

# Show available RAM
free;
echo '';

# Kill relevant RAM eating processes
killall ckati;
killall java;
killall ninja;

# Show available RAM
echo '';
free;
