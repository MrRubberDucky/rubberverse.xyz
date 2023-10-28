#!/usr/bin/bash
# You should change the directory in /var/lib/redenv/bin/activate first...
# Change Directory is here 'cus systemd otherwise tries to look in wrong places
cd /var/lib/redenv
# Setting PATH variables manually
export PATH=/var/lib/redenv/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export _OLD_VIRTUAL_PATH=$PATH
export VIRTUAL_ENV=/var/lib/redenv/.local
export PATH=$VIRTUAL_ENV/bin:$PATH

# Executing venv
source bin/activate
# Running the bot
python3.11 -O -m redbot ReDucky --no-prompt