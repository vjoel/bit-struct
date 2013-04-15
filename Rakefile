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

namespace :doc do
  desc "Publish RDoc to RubyForge using rsync"
  task :rsync  => %w(doc:clobber_rdoc doc:rdoc) do
    config = YAML.load(
        File.read(File.expand_path('~/.rubyforge/user-config.yml'))
    )

    host = "#{config['username']}@rubyforge.org"
    remote_dir = "/var/www/gforge-projects/#{PROJ.rubyforge.name}/"
    remote_dir << PROJ.rdoc.remote_dir if PROJ.rdoc.remote_dir
    local_dir = PROJ.rdoc.dir

    sh %{rsync -az --delete #{local_dir}/ #{host}:#{remote_dir}}
    #Rake::SshDirPublisher.new(host, remote_dir, local_dir).upload
  end
end  # namespace :doc

ensure_in_path 'lib'
require 'bit-struct/bit-struct'

#task :default => 'spec:run'

PROJ.name = 'bit-struct'
PROJ.authors = 'Joel VanderWerf'
PROJ.email = 'vjoel@users.sourceforge.net'
PROJ.url = 'http://rubyforge.org/projects/bit-struct/'
PROJ.version = BitStruct::VERSION
PROJ.rubyforge.name = 'bit-struct'
PROJ.summary = "Library for packed binary data stored in ruby Strings"
PROJ.description = <<END
Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files.
END
PROJ.changes = File.read(PROJ.history_file)[/^\w.*?(?=^\w)/m]

(PROJ.rdoc.dir = File.readlink(PROJ.rdoc.dir)) rescue nil

PROJ.spec.opts << '--color'
PROJ.test.files = Dir["test/*.rb"]

task :release => ["gem:release", "doc:rsync"]

# EOF
