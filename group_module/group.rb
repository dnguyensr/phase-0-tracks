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

#Members Table
#Member Stage Name, Real Name, DOB

create_members_table = <<-asdf
  CREATE TABLE IF NOT EXISTS members(
  stage_name VARCHAR(255),
  real_name VARCHAR(255),
  dob INT,
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
)
asdf

#Group SNS/social networking site Table
#Cafe, Twitter, Facebook, Instagram, V

create_sns_table = <<-asdf
  CREATE TABLE IF NOT EXISTS sns(
  cafe VARCHAR(255),
  twitter VARCHAR(255),
  facebook VARCHAR(255),
  instagram VARCHAR(255),
  v VARCHAR(255),
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
)
asdf


def add_artist(db, artist, label, debut_year)
  db.execute("INSERT INTO artists (artist, label, debut_year) VALUES (?, ?, ?)", [artist, label, debut_year])
end

def add_members(db, artist_id, stage_name, real_name, dob)
  db.execute("INSERT INTO members (stage_name, real_name, dob, artist_id) VALUES (?, ?, ?, ?)", [stage_name, real_name, dob, artist_id])
end

def add_sns(db, artist_id, cafe, twitter, fb, insta, v)
  db.execute("INSERT INTO sns (cafe, twitter, facebook, instagram, v, artist_id) VALUES (?, ?, ?, ?, ?, ?)", [cafe, twitter, fb, insta, v, artist_id])
end






#code to populate artists table
#add_artist(db, 'iOi', 'YMC Entertainment', 2016)
#add_artist(db, 'TWICE', 'JYP Entertainment', 2015)
#add_artist(db, 'April', 'DSP Entertaiment', 2015)
#add_artist(db, 'Oh My Girl', 'WM Entertainment', 2015)
#add_artist(db, 'GFRIEND', 'Source Music', 2015)
#add_artist(db, 'Lovelyz', 'Woollim Entertainment', 2014)
#add_artist(db, 'Red Velvet', 'SM Entertainment', 2014)


#code to populate members table

#code to populate sns table