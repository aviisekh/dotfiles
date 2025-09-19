#!/bin/bash

# Source the functions file to access fix_fluid_ip
source ~/dotfiles/.functions

SESSION="fluid-dev"

if [[ $1 == "mobile" ]]; then
  fix_fluid_ip
fi

# If already inside a tmux session, just switch/attach to the target session
if [ -n "$TMUX" ]; then
  tmux switch-client -t $SESSION 2>/dev/null || tmux attach-session -t $SESSION
  exit 0
fi

# If the session already exists, attach to it
if tmux has-session -t $SESSION 2>/dev/null; then
  tmux attach-session -t $SESSION
  exit 0
fi

# Directories
FLUID_CORE_DIR="/Users/aviisekh/Development/fluid/fluid"
ADMIN_DIR="/Users/aviisekh/Development/fluid/fluid-admin"
AUTH_DIR="/Users/aviisekh/Development/fluid/fluid-login"
MOBILE_DIR="/Users/aviisekh/Development/fluid/fluid-mobile"

# Start new tmux session with the first pane (rails server)
tmux new-session -d -s $SESSION -c $FLUID_CORE_DIR
tmux send-keys -t $SESSION "rails server -b 0.0.0.0" C-m

# Split pane 0 horizontally (creates pane 1 on the right, for bun dev)
tmux split-window -h -t $SESSION:1 -c $AUTH_DIR
tmux send-keys -t $SESSION:1.2 "bun install; bun dev" C-m

# Split pane 1 horizontally (creates pane 2 on the right, for pnpm install)
tmux split-window -h -t $SESSION:1.2 -c $ADMIN_DIR
tmux send-keys -t $SESSION:1.3 "pnpm install; pnpm dev" C-m

# If mobile parameter is provided, add mobile pane
if [[ $1 == "mobile" ]]; then
  tmux split-window -v -t $SESSION:1.3 -c $MOBILE_DIR
  tmux send-keys -t $SESSION:1.4 "yarn install; yarn start:fluid-development" C-m
fi

# Go back to pane 1 (rails), split vertically (creates pane 2 on top, for rails, redis-server)
tmux split-window -v -t $SESSION:1.1 -c $FLUID_CORE_DIR
tmux split-window -h -t $SESSION:1.1 -c $FLUID_CORE_DIR
tmux send-keys -t $SESSION:1.2 "redis-server" C-m

tmux split-window -v -t $SESSION:1.2 -c $FLUID_CORE_DIR
tmux send-keys -t $SESSION:1.3 "bundle exec sidekiq" C-m

tmux select-pane -t $SESSION:1.4
tmux attach-session -t $SESSION
# Attach to the session
