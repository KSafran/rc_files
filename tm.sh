#!/bin/zsh

SESSION_NAME="keras"

# We need to start the server first
tmux start-server

# -d basically means detached
tmux new -d -s ${SESSION_NAME}
tmux split-window -h
# C-m enters the command
tmux send-keys 'source ../../envs/keras/bin/activate' C-m

# Selects first paneu
tmux selectp -t 0
tmux send-keys 'source ../../envs/keras/bin/activate' C-m

tmux a -t ${SESSION_NAME}
