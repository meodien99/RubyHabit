# ./const_missing.rb

class Object
  def self.const_missing(c)
    STDERR.puts "Missing constant : #{c.inspect} !"
  end
end

Bobo