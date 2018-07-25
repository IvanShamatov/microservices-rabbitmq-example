require 'bundler'
Bundler.require
require 'json'
require_relative 'mq'
require_relative './services/bing'
require_relative './services/pong'

Sneakers.configure(log: STDOUT)
