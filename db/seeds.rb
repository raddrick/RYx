# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Landing.find_or_create_by name: 'Welcome to RYx', body: "RYx was created by Magellan"

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
          video: 'V7deLeAQ_0Y',
          speaker: pamela
