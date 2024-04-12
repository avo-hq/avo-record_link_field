module Avo
  module RecordLinkField
    module Fields
      class RecordLinkField < Avo::Fields::BaseField
        attr_reader :target
        attr_reader :use_resource
        attr_reader :add_via_params

        def initialize(id, **args, &block)
          super(id, **args, &block)

          hide_on [:edit, :new]

          add_string_prop args, :target
          add_string_prop args, :use_resource
          add_boolean_prop args, :add_via_params, true
        end
      end
    end
  end
end
