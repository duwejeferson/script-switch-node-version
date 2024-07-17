# script-switch-node-version
Script to switch node version according to specified version in package.json

## How to use it
The script can be used in 2 scenarios, at first, more uses may be found.
1. VS Code Task, in the way as follows:
```jsonc
{
  "type": "shell",
  "command": "bash", // the original command is replaced by a new bash
  "args": [
    "../scripts/switchNodeVersion.sh", // the script gets executed
    "node ../auth/dist/apps/backend/main.js" // the original command must be used a parameter to the switch script
  ],
}
```
2. As pre-script on a linux terminal profile, where it configures every new terminal as they are opened
```jsonc
{
  "terminal.integrated.profiles.linux": {
    "bashNvmSwitch": {
    "path": "bash", // the original command is replaced by a new bash
    "args": [
      "../scripts/switchNodeVersion.sh" // the script get executed, and the bash stays opened to be used.
    ],
    "icon": "terminal-bash"
    }
  }
}
