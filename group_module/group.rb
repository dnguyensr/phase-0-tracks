require 'sqlite3'

db = SQLite3::Database.new("artists.db")
db.results_as_hash = true

#Artists Table
#artist, label, debut_year
create_table = <<-asdf
    CREATE TABLE IF NOT EXISTS artists(
    artist VARCHAR(255) PRIMARY KEY,
    label VARCHAR(255),
    debut_year INT
)
asdf

#Members Table
#Member Stage Name, Real Name, DOB

create_members_table = <<-asdf
    CREATE TABLE IF NOT EXISTS members(
    artist VARCHAR(255),
    stage_name VARCHAR(255),
    real_name VARCHAR(255),
    dob INT,
    FOREIGN KEY (artist) REFERENCES artists(artist)
)
asdf

#Group SNS/social networking site Table
#Cafe, Twitter, Facebook, Instagram, V

create_sns_table = <<-asdf
  CREATE TABLE IF NOT EXISTS sns(
  artist VARCHAR(255),
  cafe VARCHAR(255),
  twitter VARCHAR(255),
  facebook VARCHAR(255),
  instagram VARCHAR(255),
  v VARCHAR(255),
  FOREIGN KEY (artist) REFERENCES artists(artist)
)
asdf

db.execute(create_table)
db.execute(create_members_table)
db.execute(create_sns_table)

def add_artist(db, artist, label, debut_year)
  db.execute("INSERT INTO artists (artist, label, debut_year) VALUES (?, ?, ?)", [artist, label, debut_year])
end

def add_members(db, artist, stage_name, real_name, dob)
  db.execute("INSERT INTO members (artist, stage_name, real_name, dob) VALUES (?, ?, ?, ?)", [artist, stage_name, real_name, dob])
end

def add_sns(db, artist, cafe, twitter, fb, insta, v)
  db.execute("INSERT INTO sns (artist, cafe, twitter, facebook, instagram, v) VALUES (?, ?, ?, ?, ?, ?)", [artist, cafe, twitter, fb, insta, v])
end

def edit_artist(db, artist, datafield, newdata)
  db.execute("UPDATE artists SET #{datafield}=#{newdata} WHERE artist='#{artist}';")
end

def edit_sns(db, artist, datafield, newdata)
  db.execute("UPDATE sns SET #{datafield}='#{newdata}' WHERE artist='#{artist}';")
end

def edit_member(db, artist, datafield, newdata, olddata)
    puts "UPDATE members SET #{datafield}='#{newdata}' WHERE #{datafield}='#{olddata}';"
    db.execute("UPDATE members SET #{datafield}='#{newdata}' WHERE #{datafield}='#{olddata}';")
end

#edit methods consolidated to one edit method for users
def edit(db, artist, datafield, newdata, olddata='filler')
  datafield = datafield.downcase

  if datafield == 'label' || datafield=='debut_year'
    edit_artist(db, artist, datafield, newdata)

  elsif datafield == 'cafe' || datafield == 'twitter' || datafield == '#facebook' || datafield == 'insta' || datafield == 'v'
      edit_sns(db, artist, datafield, newdata)

  elsif datafield == 'stage_name' || datafield == 'real_name' || datafield == 'dob'
    edit_member(db, artist, datafield, newdata, olddata)

  else puts "I did not understand that request"

  end
end

def display_artists(db)
  artists = db.execute("SELECT artist FROM artists;")
    print "The following artists are in table artist: "

  artists.each do |artist|
    print "#{artist['artist']}, "
  end

  puts ""
end

def artist_info(db, artist)

  db.execute("SELECT * FROM artists WHERE artist='#{artist}';") do |artist|
    puts "#{artist['artist']} is under #{artist['label']} and debuted in #{artist['debut_year']}."
  end

end

def display_members(db, artist)
  print "#{artist} members: "
  db.execute("SELECT * FROM members WHERE artist='#{artist}';") do |member|
    print "#{member['stage_name']}, "
  end
    puts ""
end

def display_memberinfo(db, member)
  db.execute("SELECT * FROM members WHERE stage_name='#{member}';") do |member|
    puts "#{member['stage_name']} from #{member['artist']} was born on #{member['dob']}"
  end
end

def generate_artist_wiki(db, artist)
    db.execute("SELECT * FROM artists WHERE artist='#{artist}';") do |artist|
    puts "#{artist['artist']} is under #{artist['label']} and debuted in #{artist['debut_year']}."
end

def generate_member_wiki(db, artist)
end

def generate_sns_wiki(db, artist)
end

#edit_artist driver code
#edit_artist(db, 'Oh My Girl', 'debut_year', 2014)
#edit_artist(db, 'TWICE', 'debut_year', 2015)
#edit_artist(db, 'April', 'debut_year', 2015)

#edit driver code
#edit(db, 'April', 'debut_year', 2015)
#edit(db, 'April', 'stage_name', 'Hyunjoo', 'Hyunjoo2')
#edit(db, 'April', 'v', 'https://www.vlive.tv/channels/FA59B')

display_artists(db)
artist_info(db, 'Oh My Girl')
display_members(db, 'Oh My Girl')
display_memberinfo(db, 'Hyunjoo')