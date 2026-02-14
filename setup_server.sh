#!/bin/bash

set -e        #script stop after any command fail.. 

LOG="logs/automation.log"

exec > >(tee -a "$LOG") 2>&1 # log everything=normal+error 

echo "starting linux server setup.. "

#run below one  by  one /in correct order .. order matters
bash scripts/install_package.sh
bash scripts/setup_user.sh
bash scripts/nginx_setup.sh
bash scripts/php_setup.sh
bash scripts/permission_setup.sh
bash scripts/security_setup.sh
bash scripts/validation_setup.sh

echo "✅ Server setup completed successfully!"
