#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Install bash-completion
apt-get update
apt-get install -y bash-completion

# Enable bash-completion
source /etc/profile.d/bash_completion.sh