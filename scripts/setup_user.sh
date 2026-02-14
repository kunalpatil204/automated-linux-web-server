#!/bin/bash
APP_USER="WEBAPP"


# Check if the user exists
id "$APP_USER"

# If the user does not exist, create it
if [ $? -ne 0 ]; then
    echo "Creating user: $APP_USER"
    useradd -r -s /usr/sbin/nologin "$APP_USER"
else
    echo "User already exists: $APP_USER"
fi

# Add nginx user to app group
echo "Giving web server access to app user"
usermod -aG "$APP_USER" www-data
