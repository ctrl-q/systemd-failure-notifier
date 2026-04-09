# systemd-failure-notifier

Sends a desktop notification when a systemd user unit fails.

The notification provides two actions:
- **View Logs** — opens `journalctl` for the unit in a terminal
- **Restart** — restarts the unit without blocking

## Usage

Add to a systemd unit's `[Service]` section:

```ini
[Service]
ExecStopPost=systemd-failure-notifier %n
Environment=EXIT_STATUS=%?
```

## Dependencies

`bash`, `coreutils`, `libnotify`, `open-in-terminal`, `systemd`
