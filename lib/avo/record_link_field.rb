require "zeitwerk"
require "avo"
require "avo/record_link_field/version"
require "avo/record_link_field/railtie"

loader = Zeitwerk::Loader.for_gem_extension(Avo)
loader.setup

module Avo
  module RecordLinkField
    # Your code goes here...
  end
end

# loader.eager_load
