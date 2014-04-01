FROM example/project

ENV RRRSPEC_CONFIG_FILES /opt/lib/rrrspec-worker-config.rb
WORKDIR /opt/rrrspec/rrrspec
CMD bundle exec rrrspec-server worker --no-daemonize
