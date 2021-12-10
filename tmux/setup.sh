#! /bin/bash

tmux source ~/.tmux.conf
tmux split-window -h
tmux resize-pane -R 45
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t 0
tmux clock-mode -t 2
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t 0

