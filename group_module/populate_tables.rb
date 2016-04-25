require 'sqlite3'
require_relative 'group'

db = SQLite3::Database.new("artists.db")
db.results_as_hash = true

#code to populate artists table
add_artist(db, 'TWICE', 'JYP Entertainment', 2015)
add_artist(db, 'April', 'DSP Entertaiment', 2015)
add_artist(db, 'Oh My Girl', 'WM Entertainment', 2015)

#code to populate members table
add_members(db, 'TWICE', 'Nayeon', 'Im Nayeon', 950922)
add_members(db, 'TWICE', 'Jeongyeon', 'Yoo Jeongyeon', 961101)
add_members(db, 'TWICE', 'Momo', 'Hirai Momo', 961109)
add_members(db, 'TWICE', 'Sana', 'Minatozaki Sana', 961229)
add_members(db, 'TWICE', 'Jihyo', 'Park Jihyo', 970201)
add_members(db, 'TWICE', 'Mina', 'Myoui Mina', 970324)
add_members(db, 'TWICE', 'Dahyun', 'Kim Dahyun', 980528)
add_members(db, 'TWICE', 'Chaeyoung', 'Son Chaeyoung', 990423)
add_members(db, 'TWICE', 'Tzuyu', 'Chou Tzuyu', 990614)
add_members(db, 'April', 'Chaewon', 'Kim Chaewon', 971108)
add_members(db, 'April', 'Hyunjoo', 'Lee Hyunjoo', 980205)
add_members(db, 'April', 'Naeun', 'Lee Naeun', 990505)
add_members(db, 'April', 'Yena', 'Yang Yena', 000522)
add_members(db, 'April', 'Jinsol', 'Lee Jinsol', 011204)
add_members(db, 'Oh My Girl', 'Hyojung', 'CHoi Hyojung', 940728)
add_members(db, 'Oh My Girl', 'JinE', 'Shin Hyejin', 950122)
add_members(db, 'Oh My Girl', 'Mimi', 'Kim Mihyun', 950501)
add_members(db, 'Oh My Girl', 'YooA', 'Yoo Siah', 950917)
add_members(db, 'Oh My Girl', 'Seunghee', 'Hyun Seunghee', 960125)
add_members(db, 'Oh My Girl', 'Jiho', 'Kim Jiho', 970404)
add_members(db, 'Oh My Girl', 'Binnie', 'Bae Yubin', 970909)
add_members(db, 'Oh My Girl', 'Arin', 'Choi Yewon', 990618)

#code to populate sns table
add_sns(db, 'TWICE', 'http://fans.jype.com/TWICE', 'https://twitter.com/JYPETWICE', 'https://www.facebook.com/JYPETWICE', 'https://www.instagram.com/twicetagram', 'https://www.vlive.tv/channels/EDBF')
add_sns(db, 'April', 'http://cafe.daum.net/officialAPRIL', 'https://twitter.com/APRIL_DSPmedia', 'https://www.facebook.com/APRIL.DSPmedia', 'https://www.instagram.com/official.april', 'https://www.vlive.tv/channels/FA59B')
add_sns(db, 'Oh My Girl', 'http://cafe.daum.net/-ohmygirl', 'https://twitter.com/WM_OHMYGIRL', 'https://www.facebook.com/official.ohmygirl', 'https://www.instagram.com/wm_ohmygirl', 'https://www.vlive.tv/channels/FA59B')