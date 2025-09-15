alias s := server
alias u := timed_run

ctb:
  toolbox enter --container fedora-toolbox-41-cuda

server: ctb
  /home/nvk/Projects/llama-swap --config llama_swap_config.yaml --listen localhost:8080 --watch-config

timed_run:
    time uv run main.py
