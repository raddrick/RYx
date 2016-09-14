# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Landing.find_or_create_by name: 'Welcome to RYx', body: "RYx was created by Magellan"
Landing.find_or_create_by name: 'About', body: "About RYxGlobal"
Landing.find_or_create_by name: 'Team', body: "The RYxGlobal Team"

#TODO we are seeding speakers because we do not want to go live with
#  CMS features for Speakers/Talks but we do want the UI features
#  next iteration we can kick this stuff to the trash
casey = Speaker.find_or_create_by name: 'Casey Carr-Jones',
          bio: 'Casey Carr-Jones is a Human Resources professional well-versed in employee relations and talent management.  Prior to joining Remote Year, she was Vice President of HR and Operations for a financial services company in Manhattan. Casey is currently freelance consulting, providing HR services to several companies with the goal of improving productivity, communication, and efficiency.  To date, Casey has terminated over 100 employees and more than 20 third-party vendors.',
          image_url: 'valencia/casey',
          instagram: 'apackedsuitcase_y',
          facebook: 'casey.carr.jones',
          linkedin: 'acaseycarrjones'
puts "Created #{casey.inspect}"
puts Talk.find_or_create_by title: 'The Terminator: Handling termination of a job or project with grace',
          description: '',
          video: 'UOB-DExRhCo',
          speaker: casey

patrick = Speaker.find_or_create_by name: 'Patrick Loughan',
          bio: 'Patrick Loughran is a screenwriter. He previously worked in publishing for Penguin Books, and before that in journalism. He has also read lots of books about storytelling, and tried & failed to write several novels. He thinks all this qualifies him to talk about stories for 7 minutes.',
          image_url: 'valencia/patrick'
puts "Created #{patrick.inspect}"
puts Talk.find_or_create_by title: 'What makes a story GOOD?',
          description: '',
          video: 'zz9CKVCAgnA',
          speaker: patrick

elodie = Speaker.find_or_create_by name: 'Elodie Joubert',
          bio: 'Elodie Joubert is a dual French-American citizen with a degree in Intercultural Management/Religious Mediation, and lifelong exposure to various languages and cultures. She works with international students all around the world to help their dream come true: travel to the United States to study English in full-immersion intensive programs. She speaks French, English, Spanish, German, and basic Korean.',
          image_url: 'valencia/elodie',
          linkedin: 'elodie-joubert-72399348',
          facebook: 'elodie.joubert.54',
          instagram: 'el_joubear'
puts "Created #{elodie.inspect}"
puts Talk.find_or_create_by title: 'A personal European story',
          description: '',
          video: '6pGZxc8xHiU',
          speaker: elodie

pamela = Speaker.find_or_create_by name: 'Pamela Welburn',
          bio: 'Pamela is a chartered geologist who has worked in the environmental industry for over 18 years, specialising in the redevelopment of land affected by contamination. Over the years she has worked for a number of large petroleum, chemical, pharmaceutical and manufacturing clients assessing and remediating their land.  Pamela is also a published author on ‘remediating and mitigating risk from volatile organic compound (VOC) vapours’.  Pamela has travelled extensively visiting diverse countries such as India, Bhutan, Senegal, Madagascar, Bolivia and Guatemala.',
          image_url: 'valencia/pam',
          linkedin: 'pamela-welburn-36884340',
          twitter: 'pamela_welburn'
puts "Created #{pamela.inspect}"
puts Talk.find_or_create_by title: 'Sustainable Travel',
          description: '',
          video: 'APwit7xiCPs',
          speaker: pamela

sam = Speaker.find_or_create_by name: 'Sam Pressin',
          bio: 'Sam Pessin is a lover of travel and a lifelong expat, having spent over 10 years living abroad. He is one of the founders and COO of Remote Year, a year-long work and travel program. Previously, Sam worked at Bain & Co Consulting and a small digital agency called Vokal, both in Chicago.',
          image_url: 'lisbon/sam'
puts "Created #{sam.inspect}"
puts Talk.find_or_create_by title: 'The future of work',
          description: '',
          video: 'pG8aZTbbnYE',
          speaker: sam

saritha = Speaker.find_or_create_by name: 'Saritha Vuppala',
          bio: 'Saritha Vuppala is originally from India and has been a New Yorker for 14 years. She loves all things comedy, and completed her improv training at The PIT just before joining Remote Year. In addition to being a full-time software developer and news junkie, she likes to take long walks and check her phone in scenic spots.',
          image_url: 'lisbon/saritha'
puts "Created #{saritha.inspect}"
puts Talk.find_or_create_by title: 'The lessons from a year of improv',
          description: '',
          video: 'GfiD8JJCd28',
          speaker: saritha

kyron = Speaker.find_or_create_by name: 'Kyron Gosse',
          bio: 'After quitting his high paying  job at 24, Kyron jumped feet first into the property market with the determination to ‘make it work’. 5 years later Kyron is now a property entrepreneur, travelling the world, exploring different markets and doing deals in different countries. Thanks to his entrepreneurial approach to investing, Kyron has consistently bought properties and done deals without requiring the banks approval.',
          image_url: 'lisbon/kyron'
puts "Created #{kyron.inspect}"
puts Talk.find_or_create_by title: 'Busting out of the rent trap',
          description: '',
          video: 'eG2RrTtXZHg',
          speaker: kyron

gianna = Speaker.find_or_create_by name: 'Gianna Zoppi',
          bio: 'Gianna Zoppi is a cinematographer, video editor and avid capoeirista from New Jersey with a passion for athletic, travel and adventure film. As owner of Silver Moth Films, she uses work as a way to pursue her excitement for production and culture. She graduated from Cornell University with a degree in Film Studies, supplemented by work with SONY and Warner Bros. affiliates. She also spent a semester at the Film and TV School of the Academy of Performing Arts in Prague (FAMU) and most recently took her business on the road with Remote Year.',
          image_url: 'lisbon/gianna'
puts "Created #{gianna.inspect}"
puts Talk.find_or_create_by title: 'How the Best Plan can be No Plan',
          description: '',
          video: 'sBzeNKe-WPA',
          speaker: gianna

# sara = Speaker.find_or_create_by name: 'Sara Mosadegh',
#           bio: '',
#           image_url: 'rabat/sara'
# puts "Created #{sara.inspect}"
# puts Talk.find_or_create_by title: 'Remote Mindfulness',
#           description: '',
#           video: 'Qaib1-1Soo8',
#           speaker: sara

# merlijn = Speaker.find_or_create_by name: 'Merlijn Knol',
#           bio: '',
#           image_url: 'rabat/merlijn',
#           facebook: 'https://www.facebook.com/herwaypodcast/'
#           # website: 'http://herwaypodcast.com/'
# puts "Created #{merlijn.inspect}"
# puts Talk.find_or_create_by title: 'The Girl Effect',
#           description: '',
#           video: 'j5YDOhfQeac',
#           speaker: merlijn


# dylan = Speaker.find_or_create_by name: 'Dylan Hoffman',
#           bio: '',
#           image_url: 'rabat/dylan'
# puts "Created #{dylan.inspect}"
# puts Talk.find_or_create_by title: 'Finding the Human Moment: A Journey to Emotional Intelligence',
#           description: '',
#           video: 'j-MSFPKKYN8',
#           speaker: dylan

