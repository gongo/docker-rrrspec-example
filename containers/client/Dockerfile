FROM example/project

ENV RRRSPEC_CONFIG_FILES /opt/lib/rrrspec-client-config.rb
RUN git clone https://github.com/gongo/docker-rrrspec-example.git /opt/project
CMD rrrspec-client start --rsync-name ''
