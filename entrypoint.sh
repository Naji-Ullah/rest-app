set -e

rm -f /rails/tmp/pids/server.pid

bundle check || bundle install

echo "Waiting for database..."
until pg_isready -h db -p 5432 -U myapp_user; do
  echo "Database is unavailable - sleeping"
  sleep 1
done
echo "Database is ready!"

echo "Running database migrations..."
rails db:migrate

exec "$@" 