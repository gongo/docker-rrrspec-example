FROM example/project

RUN apt-get install -y nodejs

ADD config.ru /opt/rrrspec/rrrspec-web/config.ru
ADD rrrspec-web-app.patch /tmp/rrrspec-web-app.patch

ENV RRRSPEC_CONFIG_FILES /opt/lib/rrrspec-web-config.rb
CMD cd /opt/rrrspec ; patch -p1 < /tmp/rrrspec-web-app.patch

EXPOSE 9292
CMD cd /opt/rrrspec/rrrspec-web ; rackup -p 9292 -Ilib
