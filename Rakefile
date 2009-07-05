# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
###require 'bit-struct'

task :default => 'spec:run'

PROJ.name = 'bit-struct'
PROJ.authors = 'Joel VanderWerf'
PROJ.email = 'vjoel@users.sourceforge.net'
PROJ.url = 'http://rubyforge.org/projects/bit-struct/'
PROJ.version = "0.12" ###BitStruct::VERSION
PROJ.rubyforge.name = 'bit-struct'
PROJ.summary = "Library for packed binary data stored in ruby Strings"
PROJ.description = <<END
Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files.
END

PROJ.spec.opts << '--color'

# EOF
