#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

if ! grep -q "www.test.dev" "/etc/hosts"; then getent hosts proxy | awk '{ print $1, "test.dev www.test.dev" }' >> /etc/hosts; fi
# Setup SSL & Hosts
# ./setup_ssl.sh
# cd nginx/etc/nginx
# mkcert www.test.dev


# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"