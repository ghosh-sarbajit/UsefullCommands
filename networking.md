## Network
### Prefer IPv4 over IPv6 instead of disabling IPv6 entirely.

```bash
sudo vim /etc/gai.conf
precedence ::ffff:0:0/96  100 # find the line and uncomment it
```
