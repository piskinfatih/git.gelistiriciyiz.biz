# https://gist.github.com/bastilian/e2484060e09990de0aa7

ENV['MM_ENV']   = "production"
ENV['RACK_ENV'] = "production"

require 'middleman-core/load_paths'
::Middleman.setup_load_paths

require 'middleman-core'
require 'middleman-core/application'
server = ::Middleman::Application.server
run server