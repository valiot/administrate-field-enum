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

      def option_filter
        options[:option_filter] || Proc.new { true }
      end

      def filtered_options(options)
        options.select(&option_filter).map do |k, v|
          [I18n.t("activerecord.attributes.#{resource.class.name.underscore}.#{attribute.to_s.pluralize}.#{k}", default: k.humanize), k]
        end
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
