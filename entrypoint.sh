#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Write RAILS_MASTER_KEY to config/master.key if environment variable is present
if [ -n "$RAILS_MASTER_KEY" ]; then
  echo "RAILS_MASTER_KEY detected. Creating config/master.key..."
  mkdir -p /app/config
  echo "$RAILS_MASTER_KEY" > /app/config/master.key
fi

# Run migrations automatically in production
if [ "$RAILS_ENV" = "production" ]; then
  echo "Running database migrations..."
  bundle exec rails db:migrate
fi

# Then exec the container's main process.
exec "$@"
