# sudo gem install mysql
require "mysql"

host = "localhost"
user = "root"
password = "root"
dbname = "test"
tablename = "Worker"
# test connection
begin
  con = Mysql.new host , user, password
  puts con.get_server_info
  rs = con.query "Select VERSION()"
  puts rs.fetch_row
rescue Mysql::Error=> er
  puts er.errno
  puts er.error
ensure
  con.close if con
end
puts

# list all dbs
begin
  con = Mysql.new host , user, password
  con.list_dbs.each {|db| puts db}


rescue Mysql::Error => er
  puts er.errno
  puts er.error

ensure
  con.close if con
end
puts




# table operations
begin
  con = Mysql.new host , user, password, dbname
  # drop table
  sql = "drop table if exists #{tablename}"
  con.query sql

  # create table
  sql = """
create table if not exists #{tablename} (
id bigint primary key  auto_increment ,
name varchar(50) not null,
age int not null,
wage real not null
)
"""
  con.query sql

  # insert into table
  people = {1=>["foo", 10 , 100.0],
  2=> ["bar", 20 , 200.0],
  3=> ["bim", 30 , 300.0]}
  people.each_value {|person|
    sql = """
insert into #{tablename} (name , age, wage) VALUES
 (\"#{person[0]}\", #{person[1]}, #{person[2]})
"""
    con.query sql
  }


  # fetch data
  sql = "select * from #{tablename}"
  rs = con.query sql
  num_rows = rs.num_rows
  num_rows.times do
    puts rs.fetch_row.join(" , ")
  end


  puts
  # another way to fetch data
  rs = con.query sql
  rs.each {|row| puts row.join ", "}


  puts
  # another way to fetch data
  rs = con.query sql
  rs.each_hash {|row|
   id = row["id"]
    name = row["name"]
    age = row["age"]
    wage = row["wage"]
    puts "#{id}, #{name}, #{age}, #{wage}"
  }


  # update with prepared stmt
  sql = "update #{tablename} set name = ? , age = ? , wage = ? where id = ?"
  name = "new_foo"
  age = 66
  wage = 666.6
  id = 1
  pstmt = con.prepare sql
  pstmt.execute name, age, wage, id

  puts
  #get affected data
  sql = "select * from #{tablename} where id = ?"
  pstmt = con.prepare sql
  rs = pstmt.execute 1
  rs.each {|row|
   puts row.join(", ")
   }


rescue Mysql::Error => er
  puts er.errno
  puts er.error

ensure
  con.close if con
end
sql = "drop table if exists #{tablename}"