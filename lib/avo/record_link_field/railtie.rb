module Avo
  module RecordLinkField
    class Railtie < Rails::Railtie
      initializer "avo-record_link_field.init" do
        Avo.plugin_manager.register Avo::RecordLinkField::Plugin
      end
    end
  end
end
