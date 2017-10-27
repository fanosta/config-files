tmux split-window -h sh -c 'watch -c -n 0.25 "dmesg --color=always | tail -n 32"; exec zsh';
tmux split-window -v sh -c 'ping heise.de; exec zsh';
tmux select-pane -L;
tmux split-window -v sh -c 'top; exec zsh';
tmux select-pane -U;

