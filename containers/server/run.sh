#!/bin/sh

set -e

cd /opt/rrrspec/rrrspec-server ; rake rrrspec:server:db:migrate
rrrspec-server server --no-daemonize
