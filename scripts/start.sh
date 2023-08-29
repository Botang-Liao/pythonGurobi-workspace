#!/bin/bash

sudo chown "$(id -u)":"$(id -g)" /home/"$(id -un)"/.vscode-server && chmod 755 /home/"$(id -un)"/.vscode-server
sudo chown "$(id -u)":"$(id -g)" /home/"$(id -un)"/projects && chmod 755 /home/"$(id -un)"/projects

# keep the container running
tail -f /dev/null
