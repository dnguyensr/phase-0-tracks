#Group_Module

##Purpose
The purpose of this the group_module is to handle the creation, storage, and editing of music artist information. It is meant for use with existing IRC and Discord bot frameworks such as Cinch for IRC and Discordrb for Discord. Additionally, it can also be used to generate markdown formatted text to add to various wiki sites.

##Functional Methods & Syntax
* add_artist(db, artist, label, debut_year) - Adds artist
* add_members(db, artist, stage_name, real_name, dob) - Add member
* add_sns(db, artist, cafe, twitter, fb, insta, v) - Add social media URLs
* edit(db, artist, datafield, newdata, olddata='filler') - Edit data
* display_artists(db) - prints all artists in artist table
* artist_info(db, artist) - prints info about artist
* display_members(db, artist) - prints all members in group
* display_memberinfo(db, member) - prints information about member
* generate_wiki(db, artist) - prints markdown formatted text for use in wiki pages

##Datafields
* artist
* label
* debut_year
* stage_name
* real_name
* dob
* cafe - Moderated communites on Daum.net
* twitter
* facebook
* instagram
* v - V Live (Korean broadcasting app)

##Pending changes (will be updated outside of dbc repo)
* scope: implementation of class/modules
* display methods: implement into irc/discord ruby bot framework
* generate_wiki: generate text directly to online text editor
* tables: crowd source populating of tables