require 'rrrspec/web'

use ActiveRecord::ConnectionAdapters::ConnectionManagement

RRRSpec.setup(RRRSpec::Web::WebConfiguration.new, [])
RRRSpec::Web.setup

run Rack::Cascade.new [RRRSpec::Web::APIv2, RRRSpec::Web::App]
