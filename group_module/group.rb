require 'sqlite3'

db = SQLite3::Database.new("artists.db")
db.results_as_hash = true

#Artists Table
#artist, label, debut_year
create_table = <<-asdf
  CREATE TABLE IF NOT EXISTS artists(
  id INTEGER PRIMARY KEY,
  artist VARCHAR(255),
  label VARCHAR(255),
  debut_year INT
)
asdf

db.execute(create_table)

def add_artist(db, artist, label, debut_year)
  db.execute("INSERT INTO artists (artist, label, debut_year) VALUES (?, ?, ?)", [artist, label, debut_year])
end

add_artist(db, 'iOi', 'YMC Entertainment', 2016)
add_artist(db, 'TWICE', 'JYP Entertainment', 2015)
add_artist(db, 'April', 'DSP Entertaiment', 2015)
add_artist(db, 'Oh My Girl', 'WM Entertainment', 2015)
add_artist(db, 'GFRIEND', 'Source Music', 2015)
add_artist(db, 'Lovelyz', 'Woollim Entertainment', 2014)
add_artist(db, 'Red Velvet', 'SM Entertainment', 2014)

#Members Table
#Member Stage Name, Real Name, DOB

#Group SNS Table
#Cafe, Twitter, Facebook, Instagram, V