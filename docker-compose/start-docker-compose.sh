#!/bin/sh

export DOCKER_HOST_IP=$(ip route | grep docker0 | awk '{print $9}')
docker-compose -f ./travel-agency-services.yml rm
docker-compose -f ./travel-agency-services.yml up
