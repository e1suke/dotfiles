#! /bin/bash

tmux source ~/.tmux.conf
tmux split-window -h
tmux resize-pane -R 75
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t 0
tmux clock-mode -t 2
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t 0
tmux new-window
tmux split-window -h
tmux resize-pane -R 40
tmux select-window -t 0

