#
#--
# Ronin Gen - A Ruby library for Ronin that provides various Generators for
# Ronin.
#
# Copyright (c) 2009 Postmodern (postmodern.mod3 at gmail.com)
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

require 'ronin/generators/config'

require 'fileutils'

module Ronin
  module Platform
    module Generators
      class SpecGenerator

        def generate(path)
          spec_dir = File.join(path,'spec')

          FileUtils.mkdir_p(spec_dir)
          FileUtils.cp(
            File.join(Config::STATIC_DIR,'spec','spec_helper.rb'),
            spec_dir
          )
        end

      end
    end
  end
end
