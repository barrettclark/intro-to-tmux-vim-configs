#!/bin/bash

if [ $# -gt 0 ]; then
  session=$1
  tmux has-session -t $session 2>/dev/null

  if [ $? != 0 ]; then
    if [ -f ~/.tmuxp/$session.yaml ]; then
      tmuxp load $session
    else
      tmuxp load -s $session default
    fi
  else
    tmux attach-session -t $session
  fi
else
  echo " *** Try again with a session name"
fi
