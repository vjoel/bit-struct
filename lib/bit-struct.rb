# A Convenience to load all field classes and yaml handling.

if "a"[0].kind_of? Fixnum
  unless Fixnum.methods.include? :ord
    class Fixnum
      def ord; self; end
    end
  end
end

require 'bit-struct/bit-struct'
require 'bit-struct/fields'
require 'bit-struct/yaml'

