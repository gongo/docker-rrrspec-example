FROM example/project

RUN apt-get install -y nodejs

ADD config.ru /opt/rrrspec/rrrspec-web/config.ru
ENV RRRSPEC_CONFIG_FILES /opt/lib/rrrspec-server-config.rb

EXPOSE 9292
WORKDIR /opt/rrrspec/rrrspec-web
CMD rackup -p 9292 -Ilib
