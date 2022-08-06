#!/bin/bash
cmus-remote -C clear
cmus-remote -C "add ~/Music"
cmus-remote -C "update-cache -f"

# INSERT THIS IN CMUS COMMAND LINE
# :bind -f common u shell ~/.config/cmus/update-library.sh