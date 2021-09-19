#!/bin/bash

DEV_CONTAINER=container-name
DEV_SHELL=sh

case $1 in
  ssh)
    docker exec -it $DEV_CONTAINER $DEV_SHELL
    ;;
  start)
    docker start $DEV_CONTAINER
    ;;
  stop)
    docker stop $DEV_CONTAINER
    ;;
  status)
    docker ps --filter "name=$DEV_CONTAINER"
    ;;
  # TODO: add custom scripts per requirements
  *)
    echo -n "Command not found"
    ;;
esac