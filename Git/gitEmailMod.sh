#!/bin/sh
# Ensure you have a clean working directory
git checkout main
# Rewrite the commit history to change the author email
git filter-branch --env-filter \
'
OLD_EMAIL="<OLD EMail to change>"
CORRECT_NAME="<Correct git user name>"
CORRECT_EMAIL="<New correct Email ID>"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
# Force push the changes to the repository
git push --force --tags origin 'refs/heads/*'