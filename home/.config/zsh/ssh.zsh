# Check if SSH_AUTH_SOCK is set, if not, start ssh-agent and add keys
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/personal_github > /dev/null 2>&1
    ssh-add ~/.ssh/digishock_bitbucket > /dev/null 2>&1
    ssh-add ~/.ssh/digishock_hosting > /dev/null 2>&1
fi
