require_relative "fields/record_link_field"

module Avo
  module RecordLinkField
    class Plugin < Avo::Plugin
      class << self
        def boot
          Avo.plugin_manager.register_field :record_link, Avo::RecordLinkField::Fields::RecordLinkField
        end

        def init
        end
      end
    end
  end
end
