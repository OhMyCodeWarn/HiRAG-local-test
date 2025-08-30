alias s := server

ctb:
  toolbox enter --container fedora-toolbox-41-cuda

server: ctb
  /home/nvk/Projects/llama-swap --config llama_swap_config.yaml --listen localhost:8080 --watch-config
