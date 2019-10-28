require 'sqlite3'

# @@SQLITE_DB_FILE = "contacts_1.sqlite"

db = SQLite3::Database.new("#{File.dirname(__FILE__)}/project1/contacts.sqlite")
db_data = db.execute("select con.name, con.phone, con.email, com.name from contact con, company com where com.name = con.company")
p db_data