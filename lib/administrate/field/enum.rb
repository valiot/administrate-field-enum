require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Enum < Administrate::Field::Base
      def to_s
        data.humanize unless data.nil?
      end

      def html_options
        options[:html] || {}
      end

      def include_blank_option
        options.fetch(:include_blank, false)
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
