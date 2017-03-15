require "sqlite3"
require "faker"

# Set up database connection; creates database file if it doesn't exist
$db = SQLite3::Database.new("animal_shelter.db")

# $db.execute('drop table if exists dogs;')

# # Create dogs table
# $db.execute(<<-SQL
# CREATE TABLE dogs (
# id integer primary key AUTOINCREMENT not null,
# name VARCHAR(64),
# age INTEGER,
# weight INTEGER);
# SQL
# )

# data = []
# 6.times do |i|
#   data << [Faker::Cat.name, rand(20)+1, rand(20)+1]
#   # $db.execute('insert into dogs (name, age, weight) values (?, ?, ?)', data[i])
#   auxdata = [data[i][0], i+1]
#   $db.execute('update dogs set name = ? where id = ?', auxdata)
# end
#  p data
 # p auxdata

# p $db.execute('delete from dogs where age = nil ')
# $db.execute('update dogs set age = 3 where id = 6')
p $db.execute('select * from dogs') 

