#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /rails/tmp/pids/server.pid

# Install gems if Gemfile.lock has changed
bundle check || bundle install

# Wait for database to be ready
echo "Waiting for database..."
until pg_isready -h db -p 5432 -U myapp_user; do
  echo "Database is unavailable - sleeping"
  sleep 1
done
echo "Database is ready!"

# Run database migrations
echo "Running database migrations..."
rails db:migrate

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@" 