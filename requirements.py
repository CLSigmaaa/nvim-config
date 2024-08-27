"""
    This script installs the required depedencies for the nvim config on Windows.
    The script is written in Python and uses the subprocess module to execute PowerShell commands.
    The script installs the following software:
    - Scoop
    - rga
    - fzf
    - vcredist2022
    - latex
    - ripgrep
    - Updates ripgrep

    The script is executed by running the following command in the terminal:
    python3 requirements.py
"""

import subprocess

def run_command(command):
    try:
        result = subprocess.run(["powershell", "-Command", command], check=True, text=True, capture_output=True)
        print(f"Command executed successfully: {command}")
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {command}")
        print(e.stderr)

commands = [
    "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser",
    "Invoke-RestMethod -Uri https://get.scoop.sh/ | Invoke-Expression",
    "scoop install rga",
    "scoop install fzf",
    "scoop install extras/vcredist2022",
    "scoop install latex",
    "scoop install ripgrep",
    "scoop update ripgrep"
]

for command in commands:
    run_command(command)
