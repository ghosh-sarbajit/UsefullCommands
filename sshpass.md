# Create a sshpass file (not secure)

1. Create script ssh_exec


```python
#!/bin/bash

# Configuration
USER="username"
PASSFILE="$HOME/.ssh/ssh_pass"

# Server mapping
declare -A SERVERS
SERVERS[1]="ip1"
SERVERS[2]="ip2"

# Validate input
NAME="$1"

if [[ -z "$NAME" ]]; then
    echo "Usage: $0 1|2"
    exit 1
fi

HOST="${SERVERS[$NAME]}"

if [[ -z "$HOST" ]]; then
    echo "Unknown server name: $NAME"
    exit 1
fi

# Check password file exists
if [[ ! -f "$PASSFILE" ]]; then
    echo "Password file not found: $PASSFILE"
    exit 1
fi

# Connect using sshpass
sshpass -f "$PASSFILE" ssh "$USER@$HOST"
```

2. Create password file ssh_pass
3. Give permissions

```bash
chmod 500 ssh_exec
chmod 400 ssh_pass
cp ssh_exec ~/.local/bin 
```
4. Use

```bash
ssh_exec 1
```
