# Send prefix
set-option -g prefix C-a
unbind-key C-a
bind-key C-a send-prefix

# Use Alt-arrow keys to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left previous-window
bind -n S-Right next-window

# Mouse mode
setw -g mouse on

# Set easier window split keys
bind -n C-Right split-window -h
bind -n C-Down split-window -v

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded."

# Set Terminal Colors
set -g default-terminal screen-256color

# Zoom Pane
bind -n C-z resize-pane -Z

# Kill Pane
bind -n C-x kill-pane

# Kill Window
bind -n C-S-x kill-window

# New Window
bind -n C-n new-window -a

# Toggle Layouts
bind -n C-Tab select-layout -n

bind -n C-Space command-prompt -I "#W" "rename-window '%%'"

# Status Bar
set-option -g status on
set-option -g status-interval 1
set-option -g status-justify centre
set-option -g status-keys vi
set-option -g status-position bottom
set-option -g status-style fg=colour136,bg=colour235
set-option -g status-left-length 20
set-option -g status-left-style default
set-option -g status-left "#[fg=green]#H #[fg=black]• #[fg=green,bright]#(uname -r)#[default]"
set-option -g status-right-length 140
set-option -g status-right-style default
set-option -g status-right "#[fg=green,bg=default,bright]#(tmux-mem-cpu-load) "
#set-option -ag status-right "#[fg=red,dim,bg=default]#(uptime | cut -f 4-5 -d ' ' | cut -f 1 -d ',') "
set-option -ag status-right " #[fg=white,bg=default]%a%l:%M:%S %p#[default] #[fg=blue]%Y-%m-%d"
set-window-option -g window-status-style fg=colour244
set-window-option -g window-status-style bg=default
set-window-option -g window-status-current-style fg=colour166
set-window-option -g window-status-current-style bg=default

# Status CPU
#set -g status-interval 2
#set -g status-left "#S #[fg=green,bg=black]#(tmux-mem-cpu-load --colors --interval 2)#[default]"
#set -g status-left-length 60
