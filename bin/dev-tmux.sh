#!/bin/bash
read name
# tmux new -s $name
cd ~/code/
tmux new-session -d -s $name -n 'code'
# tmux split-window -v -t $name 'testname'
tmux new-window -t $name -n 'console'
tmux new-window -t $name -n 'notes'
tmux select-window -t 'code'
tmux -2 attach-session -t $name

