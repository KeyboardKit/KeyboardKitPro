#!/bin/bash

# Documentation:
# This script creates a new version tag for the project.

NAME="KeyboardKitPro"
DEFAULT_BRANCH="master"
BRANCH=${1:-$DEFAULT_BRANCH}
SCRIPT="scripts/version.sh"
chmod +x $SCRIPT
bash $SCRIPT $NAME $BRANCH
