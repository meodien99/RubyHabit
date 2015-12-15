# best_quotes/sqlite_test.rb
require 'sqlite3'
require 'rubyhabit/sqlite_model'

class MyTable < Rubyhabit::Model::SQLite;

end

STDERR.puts MyTable.schema.inspect

# Create row
mt = MyTable.create 'title' => 'I saw it again!'

puts "Count: #{MyTable.count}"
#
# top_id = mt["id"].to_i
# (1..top_id).each do |id|
#   mt_id = MyTable.find(id)
#   puts "Found title #{mt_id['title']}"
# end

mt['title'] = 'I really saved it!'
mt.save!

mt2 = MyTable.find(mt['id'])

puts "Title: #{mt2['title']}"