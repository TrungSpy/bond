RAILS_ROOT = File.expand_path("../..", __FILE__)

# Number of worker process
worker_processes 3

# listen "#{RAILS_ROOT}/tmp/unicorn.sock", :backlog => 64
# listen 8080, :tcp_nopush
listen 3000

# 60 seconds (the default)
# timeout 30

pid "#{RAILS_ROOT}/log/unicorn.pid"

# By default, the Unicorn Logger will write to stderr.

preload_app true
# check_client_connection false
