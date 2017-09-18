tmux split-window -h sh -c 'mtr heise.de; exec zsh';
tmux split-window -v sh -c 'ping heise.de; exec zsh';
tmux select-pane -L;
tmux split-window -v sh -c 'top; exec zsh';
tmux select-pane -U;

