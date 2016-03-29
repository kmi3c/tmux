#!/bin/bash
tmux has-session -t $USER 2>/dev/null
if [ "$?" -eq 1 ] ; then
tmux new-session -d -s $USER
tmux send-keys 'cd' 'C-m' 'clear' 'C-m'
#tmux split-window -h -t 1 
tmux send-keys 'cd' 'C-m' 'clear' 'C-m'
tmux rename-window 'LOCAL'

tmux new-window -t 2
tmux send-keys 'cd /var/apps/' 'C-m' 'clear' 'C-m'
#tmux split-window -h -t 1 
#tmux send-keys 'cd /var/apps/' 'C-m' 'clear' 'C-m'
tmux rename-window 'APPS'

tmux new-window -t 3
tmux send-keys 'cd' 'C-m' 'C-l'
#tmux split-window -h -t 1 
#tmux send-keys 'cd' 'C-m' 'clear' 'C-m' '!ssh' 'C-m'
tmux rename-window 'LOGS'
fi
tmux -2 attach-session -t $USER
