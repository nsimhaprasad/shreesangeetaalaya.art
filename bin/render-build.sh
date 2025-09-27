#!/usr/bin/env bash
# exit on error
set -o errexit

# Build commands for Render deployment
echo "Installing dependencies..."
bundle install

echo "Installing Node dependencies..."
npm install

echo "Building CSS..."
npm run build:css

echo "Precompiling assets..."
bundle exec rake assets:precompile

echo "Running database migrations..."
bundle exec rake db:migrate

echo "Build completed successfully!"