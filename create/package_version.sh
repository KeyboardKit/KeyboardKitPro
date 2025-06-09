#!/bin/bash

# Documentation:
# This script creates a new package version tag.

SCRIPT="scripts/version_bump.sh"
chmod +x $SCRIPT & bash $SCRIPT
