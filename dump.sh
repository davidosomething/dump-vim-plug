#!/usr/bin/env bash

__dump() {
  local e="${1:-${EDITOR:-vim}}"

  [ -x "$e" ] && \
  eval "$e +'redir! >plugins.json' +'silent echo g:plugs'  +'redir END' +qall"
}

__dump $@
