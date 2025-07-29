#!/usr/bin/env bash

set -o errexit

bundle install
# bin/rails assets:precompile
# bin/rails assets:clean
chmod +x bin/rails # Add this line
bin/rails db:migrate