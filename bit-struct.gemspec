Gem::Specification.new do |s|
  s.name = "bit-struct"
  s.version = "0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0")
  s.authors = ["Joel VanderWerf"]
  s.date = "2013-04-15"
  s.description = "Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files."
  s.email = "vjoel@users.sourceforge.net"
  s.extra_rdoc_files = ["History.txt", "README.md"]
  s.files = Dir[
    "History.txt", "README.md",
    "lib/**/*.rb",
    "examples/*.{rb,txt}",
    "test/*.rb"
  ]
  s.homepage = "https://github.com/vjoel/bit-struct"
  s.rdoc_options = ["--quiet", "--line-numbers", "--inline-source", "--title", "BitStruct", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "bit-struct"
  s.rubygems_version = "2.0.3"
  s.summary = "Library for packed binary data stored in ruby Strings"
end
