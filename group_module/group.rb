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

#def display_artists(db)
#  puts db.execute("SELECT artist FROM artists;")
#end
#
#def display_groupmembers(db, group)
#  db.execute("SELECT * FROM members;")
#end
#
#def display_groupmembers(db, sns)
#  db.execute("SELECT * FROM sns;")
#end

#user_prompts method assumes database db is being used

#def user_prompts
#  puts "Available commands: display all, display artist, add, edit"
#  @command = gets.chomp
#
#  IF @command = 'display all'
#    puts "Information avilable for display: artists, members, social ##media sites"
#  else puts "garbaji"
#  end
#      display = gets.chomp
#        IF display == 'artists' || display == 'members' || display == '#social media sites'
#          db.execute("SELECT * from #{display}")
#        else puts "That information is not valid"
#        end
#
#  else
#  end
#end


#edit_artist(db, 'Oh My Girl', 'debut_year', 2014)
#edit_artist(db, 'TWICE', 'debut_year', 2015)
#edit_artist(db, 'April', 'debut_year', 2015)

#display_artists(db)

#user_prompts

#edit(db, 'April', 'debut_year', 2016)
#edit(db, 'April', 'stage_name', 'Hyunjoo', 'Hyunjoo2')
#edit(db, 'April', 'v', 'https://www.vlive.tv/channels/FA59B')