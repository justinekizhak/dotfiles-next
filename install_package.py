#!/bin/python3
import argparse
import subprocess
import sys

def checkIfCommandExists (command_name: str, install_script: str, is_brew: bool, custom_check: str):
  command_check = f"command -v {command_name}"
  if custom_check != None:
    command_check = custom_check
  cmd = subprocess.Popen(command_check, stdout=subprocess.PIPE, shell=True)
  cmd_out, cmd_err = cmd.communicate()
  cmd_out = cmd_out.decode(sys.stdout.encoding).strip()
  is_installed = cmd_out != ""
  if is_installed:
    print(f"--- {command_name} is already installed")
  else:
    if is_brew:
      install_script = f"brew install {install_script or command_name}"
    print(f"=== Installing {command_name} using `{install_script}`")
    subprocess.run(install_script, shell=True)


parser = argparse.ArgumentParser(description='Check and install packages')
parser.add_argument('command_name',  type=str, help='command name')
parser.add_argument('install_script',  type=str, help='install script', nargs='?')
parser.add_argument("-b", "--brew", action='store_true')
parser.add_argument('custom_check',  type=str, help='custom_check', nargs='?')

args = parser.parse_args()

checkIfCommandExists(args.command_name, args.install_script, args.brew, args.custom_check)