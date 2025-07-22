#


```python
#!/bin/bash

# Configuration
USER="sarbajit.ghosh"
PASSFILE="$HOME/.ssh/neysapass"

# Server mapping
declare -A SERVERS
SERVERS[1]="192.168.25.13"
SERVERS[2]="192.168.25.169"

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

```
