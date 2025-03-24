#!/usr/bin/env bash

TARGET="$HOME/.local/bin"  # Installation path
APP_NAME="seqgen"

# Ensure that path exists
mkdir -p "$TARGET"

# Copy the executable to the target path
cp seqgen.sh "${TARGET}/${APP_NAME}"

# Make it executable
chmod +x "${TARGET}/${APP_NAME}"

# Check that the target path is in PATH
if [[ ":$PATH:" != *":$TARGET:"* ]]; then
    echo "Please add \`$TARGET\` to the PATH and reopen the terminal !"
fi

echo "Installation complete."
