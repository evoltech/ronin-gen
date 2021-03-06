#
#--
# Ronin Gen - A Ruby library for Ronin that provides various generators.
#
# Copyright (c) 2009 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#++
#

require 'ronin/generators/generator'

module Ronin
  module Generators
    module Platform
      class Spec < Generator

        # The default spec_helper.rb file
        SPEC_HELPER = File.join('ronin','platform','generators','spec','spec_helper.rb')

        protected

        #
        # Generates a basic Spec test directory.
        #
        def generate!
          directory 'spec'
          copy SPEC_HELPER, 'spec'
        end

      end
    end
  end
end
