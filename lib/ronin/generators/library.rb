#
#--
# Ronin Gen - A Ruby library for Ronin that provides various generators.
#
# Copyright (c) 2009 Hal Brodigan (postmodern.mod3 at example.com)
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

require 'ronin/generators/dir_generator'

require 'extlib'

module Ronin
  module Generator
    class Library < DirGenerator

      # Project name of the library
      attr_accessor :name

      # Project title
      attr_accessor :title

      #
      # Creates a new Library generator with the given _options_.
      #
      # _options_ may contain the following keys:
      # <tt>:name</tt>:: Name of the project.
      # <tt>:title</tt>:: Title of the project.
      #
      def initialize(options={})
        @name = options[:name]
        @title = options[:title]
      end

      protected

      def generate!
        @name ||= File.basename(@path).gsub(/[_\s-]+/,'-').downcase
        @title ||= @name.split(/[_\-\s]+/).map { |word|
          word.capitalize
        }.join(' ')

        @dirname = File.basename(@path).sub(/[_\-\s]+/,'_').downcase
      end

    end
  end
end
