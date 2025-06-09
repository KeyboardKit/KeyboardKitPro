#!/bin/bash

# Documentation:
# This script creates a new package version binary tag.

SCRIPT="scripts/version_bump.sh --no-semver"
chmod +x $SCRIPT & bash $SCRIPT
