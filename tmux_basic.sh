#!/bin/bash

# Initialize
echo "Initializing Tmux General view"

# Create a new session with a specific name
tmux new-session -d -s my_session

# Create windows and panes
tmux new-window -t my_session
# tmux split-window -h -t my_session
tmux split-window -v -t my_session "bash -i -c 'TERM=screen-256color neofetch; exec bash'"
tmux resize-pane -D 40
tmux split-window -h -t my_session "bash -i -c 'TERM=screen-256color htop; exec bash'"


# Commands


# Select Panel
tmux select-pane -L
tmux select-pane -U

# Attach Session
tmux attach-session -t my_session

