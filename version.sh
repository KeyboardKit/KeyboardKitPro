#!/bin/bash

# Documentation:
# This script creates a new version tag for the project.

NAME="KeyboardKitPro"
SCRIPT="scripts/version_number_bump.sh"
chmod +x $SCRIPT
bash $SCRIPT
