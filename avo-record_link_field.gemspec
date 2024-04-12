$:.push File.expand_path("lib", __dir__)

require "avo/record_link_field/version"

Gem::Specification.new do |spec|
  spec.name = "avo-record_link_field"
  spec.version = Avo::RecordLinkField::VERSION
  spec.summary = "Record link field for Avo."
  spec.description = "Record link field for Avo."
  spec.authors = ["Adrian Marin"]
  spec.email = "adrian@adrianthedev.com"

  spec.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "avo-record_link_field.gemspec", "Gemfile", "Gemfile.lock"]

  spec.homepage = "https://avohq.io"
  spec.license = "MIT"
end
