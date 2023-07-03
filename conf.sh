#!/bin/bash


source "$GIT_CONFIG_PATH/.env"

echo "# Your credentials #"
echo "Username: $GIT_USERNAME"
echo "Email: $GIT_EMAIL"

echo "agree? y/n"
read agree
if [[ $agree == "y" ]]; then
    git config --local user.name $GIT_USERNAME
    git config --local user.email $GIT_EMAIL
fi