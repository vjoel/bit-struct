# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bit-struct'

Gem::Specification.new do |s|
  s.name = "bit-struct"
  s.version = BitStruct::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0")
  s.authors = ["Joel VanderWerf"]
  s.date = Time.now.strftime "%Y-%m-%d"
  s.description = "Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files."
  s.email = "vjoel@users.sourceforge.net"
  s.extra_rdoc_files = ["History.txt", "README.md"]
  s.files = Dir[
    "History.txt", "README.md", "Rakefile",
    "lib/**/*.rb",
    "examples/*.{rb,txt}",
    "test/*.rb"
  ]
  s.test_files = Dir["test/*.rb"]
  s.homepage = "https://github.com/vjoel/bit-struct"
  s.license = "Ruby"
  s.rdoc_options = [
    "--quiet", "--line-numbers", "--inline-source",
    "--title", "BitStruct", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "bit-struct"
  s.summary = "Library for packed binary data stored in ruby Strings"
end
