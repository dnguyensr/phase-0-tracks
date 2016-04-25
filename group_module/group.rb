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
  db.execute("INSERT INTO members (artist, stage_name, real_name, dob) VALUES (?, ?, ?, ?)", [stage_name, real_name, dob])
end

def add_sns(db, artist, cafe, twitter, fb, insta, v)
  db.execute("INSERT INTO sns (artist, cafe, twitter, facebook, instagram, v) VALUES (?, ?, ?, ?, ?, ?)", [artist, cafe, twitter, fb, insta, v])
end

def edit_artist(db, artist, )
end

def edit_member
end

def edit_sns(db, artist, network, url)

end


#code to populate artists table
#add_artist(db, 'TWICE', 'JYP Entertainment', 2015)
#add_artist(db, 'April', 'DSP Entertaiment', 2015)
#add_artist(db, 'Oh My Girl', 'WM Entertainment', 2015)

#code to populate members table
#add_members(db, 'TWICE', 'Nayeon', 'Im Nayeon', 950922)
#add_members(db, 'TWICE', 'Jeongyeon', 'Yoo Jeongyeon', 961101)
#add_members(db, 'TWICE', 'Momo', 'Hirai Momo', 961109)
#add_members(db, 'TWICE', 'Sana', 'Minatozaki Sana', 961229)
#add_members(db, 'TWICE', 'Jihyo', 'Park Jihyo', 970201)
#add_members(db, 'TWICE', 'Mina', 'Myoui Mina', 970324)
#add_members(db, 'TWICE', 'Dahyun', 'Kim Dahyun', 980528)
#add_members(db, 'TWICE', 'Chaeyoung', 'Son Chaeyoung', 990423)
#add_members(db, 'TWICE', 'Tzuyu', 'Chou Tzuyu', 990614)
#add_members(db, 'April', 'Chaewon', 'Kim Chaewon', 971108)
#add_members(db, 'April', 'Hyunjoo', 'Lee Hyunjoo', 980205)
#add_members(db, 'April', 'Naeun', 'Lee Naeun', 990505)
#add_members(db, 'April', 'Yena', 'Yang Yena', 000522)
#add_members(db, 'April', 'Jinsol', 'Lee Jinsol', 011204)
#add_members(db, 'Oh My Girl', 'Hyojung', 'CHoi Hyojung', 940728)
#add_members(db, 'Oh My Girl', 'JinE', 'Shin Hyejin', 950122)
#add_members(db, 'Oh My Girl', 'Mimi', 'Kim Mihyun', 950501)
#add_members(db, 'Oh My Girl', 'YooA', 'Yoo Siah', 950917)
#add_members(db, 'Oh My Girl', 'Seunghee', 'Hyun Seunghee', 960125)
#add_members(db, 'Oh My Girl', 'Jiho', 'Kim Jiho', 970404)
#add_members(db, 'Oh My Girl', 'Binnie', 'Bae Yubin', 970909)
#add_members(db, 'Oh My Girl', 'Arin', 'Choi Yewon', 990618)

#code to populate sns table
#add_sns(db, 'TWICE', 'http://fans.jype.com/TWICE', 'https://twitter.com/JYPETWICE', 'https://www.facebook.com/JYPETWICE', 'https://www.instagram.com/twicetagram', 'https://www.vlive.tv/channels/EDBF')
#add_sns(db, 'April', 'http://cafe.daum.net/officialAPRIL', 'https://twitter.com/APRIL_DSPmedia', 'https://www.facebook.com/APRIL.DSPmedia', 'https://www.instagram.com/official.april', 'https://www.vlive.tv/channels/FA59B')
#add_sns(db, 'Oh My Girl', 'http://cafe.daum.net/-ohmygirl', 'https://twitter.com/WM_OHMYGIRL', 'https://www.facebook.com/official.ohmygirl', 'https://www.instagram.com/wm_ohmygirl', 'https://www.vlive.tv/channels/FA59B')