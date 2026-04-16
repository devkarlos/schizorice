# Start GNOME Keyring if not already started
if ! pgrep -f "gnome-keyring-daemon" > /dev/null 2>&1; then
  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg --disable-ssh-socket 2>/dev/null)
  export SSH_AUTH_SOCK
fi
