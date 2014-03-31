FROM example/base

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

RUN apt-get install -y ruby2.0 ruby2.0-dev build-essential libmysqlclient-dev
RUN gem install --no-ri --no-rdoc bundler rake mysql2

ADD lib /opt/lib/
RUN git clone https://github.com/cookpad/rrrspec.git /opt/rrrspec
RUN cd /opt/rrrspec/rrrspec ; bundle install --without test development
RUN cd /opt/rrrspec/rrrspec-client ; rake build ; gem install pkg/*.gem
RUN cd /opt/rrrspec/rrrspec-server ; rake build ; gem install pkg/*.gem
