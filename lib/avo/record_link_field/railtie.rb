require_relative "fields/record_link_field"

module Avo
  module RecordLinkField
    class Railtie < Rails::Railtie
      initializer "avo-record_link_field.init" do
        ActiveSupport.on_load(:avo_boot) do
          Avo.plugin_manager.register_field :record_link, Avo::RecordLinkField::Fields::RecordLinkField
        end
      end
    end
  end
end
