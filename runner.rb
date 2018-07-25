require_relative 'boot'

require 'sneakers/runner'

Sneakers.configure(log: STDOUT)


r = Sneakers::Runner.new([ Bing, Pong ])
r.run
