# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './tasks/spec.rb'
require './lib/ronin/generators/version.rb'

Hoe.new('ronin-gen', Ronin::Generators::VERSION) do |p|
  p.rubyforge_name = 'ronin'
  p.developer('Postmodern', 'postmodern.mod3@gmail.com')
  p.remote_rdoc_dir = 'docs/ronin-gen'
  p.extra_deps = [['ronin', '>=0.2.2']]
end

# vim: syntax=Ruby
