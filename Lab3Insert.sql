DELETE FROM [CORRESPONDENT_VIDEO]
DELETE FROM [WITNESS_VIDEO]
DELETE FROM [REPORTAGE]
DELETE FROM [EVENT]
DELETE FROM [EVENT_TYPE]
DELETE FROM [DANGER]
DELETE FROM [CORRESPONDENT]
DELETE FROM [OPERATOR]
DELETE FROM [SCENE_TYPE]
DELETE FROM [TRANSLATION]
DELETE FROM [INTERVIEWEE]
DELETE FROM [PERSON]
DELETE FROM [VIDEO]
DELETE FROM [QUALITY]
DELETE FROM [ADDRESS]
DELETE FROM [CITY]
DELETE FROM [COUNTRY]

set DATEFORMAT dmy

SET IDENTITY_INSERT [COUNTRY] ON
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (1, 'Germany')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (2, 'Great Britain')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (3, 'USA')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (4, 'Russia')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (5, 'Canada')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (6, 'Finland')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (7, 'Sweden')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (8, 'Japan')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (9, 'Korea')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (10, 'Ukrain')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (11, 'Switzerland')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (12, 'France')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (13, 'Italy')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (14, 'Poland')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (15, 'Greece')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (16, 'Turkey')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (17, 'Estonia')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (18, 'Latvia')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (19, 'Romania')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (20, 'Brazil')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (21, 'Syria')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (22, 'Spain')
INSERT [COUNTRY] ([country_id], [official_name]) VALUES (23, 'Saudi Arabia')
SET IDENTITY_INSERT [COUNTRY] OFF

SET IDENTITY_INSERT [CITY] ON
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (1, 1, 'Berlin')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (2, 2, 'London')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (3, 3, 'New York')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (4, 3, 'Washington')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (5, 3, 'San-Francisco')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (6, 4, 'Moscow')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (7, 4, 'St. Petersburg')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (8, 5, 'Vancouver')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (9, 6, 'Helsinki')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (10, 7, 'Stockholm')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (11, 8, 'Tokyo')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (12, 9, 'Seoul')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (13, 10, 'Kiev')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (15, 11, 'Bern')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (16, 12, 'Paris')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (17, 13, 'Rome')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (18, 14, 'Warsaw')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (19, 15, 'Athens')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (20, 16, 'Ankara')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (21, 2, 'Battisford')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (22, 3, 'Los-Angeles')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (23, 21, 'ALL')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (24, 22, 'Barcelona')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (25, 3, 'Bay city')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (26, 3, 'ALL')
INSERT [CITY] ([city_id], [country_id], [city_name]) VALUES (27, 23, 'ALL')
SET IDENTITY_INSERT [CITY] OFF

SET IDENTITY_INSERT [ADDRESS] ON
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (1, 'Majakowskiring street', 2, NULL, 1)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (2, 'Green street', NULL, NULL, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (3, 'Allen street', 10, 1, 3)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (4, 'Broome Street', NULL, NULL, 3)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (5, 'New Arbat Avenue', NULL, NULL, 6)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (6, 'Mira Avenue', NULL, NULL, 6)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (7, 'Tverskaya Street', NULL, NULL, 6)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (8, 'Botkin Street', 5, NULL, 7)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (9, 'Omotesando street', NULL, NULL, 11)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (10, 'Rue Vieille Du Temple', NULL, NULL, 16)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (11, 'Zennor street', 12, 13, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (12, 'Gordon Terrace', 95, NULL, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (13, 'Guild Street', 52, NULL, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (14, 'Guild Street', 42, NULL, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (15, NULL, NULL, NULL, 22)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (16, NULL, NULL, NULL, 23)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (17, NULL, NULL, NULL, 24)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (18, NULL, NULL, NULL, 25)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (19, NULL, NULL, NULL, 26)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (20, NULL, NULL, NULL, 27)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (21, NULL, NULL, NULL, 2)
INSERT [ADDRESS] ([address_id], [street], [house_number], [building_number], [city_id]) 
VALUES (22, NULL, NULL, NULL, 6)
SET IDENTITY_INSERT [ADDRESS] OFF

SET IDENTITY_INSERT [QUALITY] ON
INSERT [QUALITY] ([quality_id], [quality]) VALUES (1,'144p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (2,'240p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (3,'360p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (4,'480p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (5,'720p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (6,'1080p')
INSERT [QUALITY] ([quality_id], [quality]) VALUES (7,'4096p')
SET IDENTITY_INSERT [QUALITY] OFF


SET IDENTITY_INSERT [VIDEO] ON
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (1, 72, 'Hugh Hefner, American founder of the international 
adult magazine Playboy, has died at the age of 91. Playboy Enterprises 
Inc said he passed away peacefully at home in Los Angeles, from natural 
causes. Hefner began publishing Playboy in his kitchen in 1953. It became 
the largest-selling mens magazine in the world, shifting seven million copies 
a month at its peak. Cooper Hefner, his son, said he would be "greatly missed by many".
He paid tribute to his fathers "exceptional and impactful life as a media and cultural 
pioneer," and called him an advocate for free speech, civil rights and sexual freedom.', 5)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (2, 123, 'In Saudi Arabia many women are celebrating following a royal decree from 
King Salman allowing them to drive for the first time. The law will be changed by June next 
year, ending Saudi Arabias status as the only country to ban women drivers 
on the roads. Frank Gardner reports.', 5)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (3, 177, 'As Republicans struggle to keep their campaign promise 
and repeal Obamacare, President Trump has other options to achieve his 
goal. The BBCs Rajini Vaidyanathan reports.', 6)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (4, 119, 'Dave the dog is being hailed a hero after helping to save a family 
who got into difficulty in the sea off Hayling Island beach. Nicolas 14-year-old 
daughter and 19-year-old niece both were being swept out to sea at the entrance to 
Langstone harbour. Nicola jumped in to help, but got into trouble herself. Luckily 
for the family, dog walker Guy and his son were passing at the time with Dave 
and Baxter.', 6)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (5, 159, 'The Spanish Government has defended its decision to send thousands 
of extra police officers to Catalonia to try to stop an independence referendum 
taking place. The regions devolved government wants schools to open as polling stations
 on Sunday. But in a BBC interview, the Education Minister Inigo Mendez insisted 
any vote would be illegal and cannot take place. Our correspondent Tom Burridge 
reports from Madrid and Barcelona.', 7)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (6, 101, 'Fethia and Hania Hassan are to be buried along with their mother,
 three months after the Grenfell Tower fire.', 7)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (7, 279, 'The United Nations has been accused of a series of failures in 
the lead-up to the current crisis in Myanmar. The UN Secretary-General acknowledged 
on Thursday that the crisis has produced the worlds fastest-developing refugee 
emergency. Our correspondent Jonah Fisher has seen internal UN documents outlining 
concerns about the handling of the Rohingya conflict and has this special report.', 7)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (8, 219, 'Jeremy Corbyn has said Labour now stands "on the threshold of 
power" because its policies are "what most people in our country actually want".
"We are now the political mainstream," he told Labour members in his 75-minute 
speech at their party conference.In what at times had the air of a victory rally, 
the Labour leader said they were a "government-in-waiting". He promised rent 
controls, attacked "forced gentrification" and said only Labour could unite 
the UK after Brexit.', 6)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (9, 167, 'Nadia Nadim fled Afghanistan as a child. Now she plays for Denmark and Portland.', 5)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (10, 379, 'A BBC exclusive on the final stages of the battle for the 
Syrian city of Raqqa -- the last major stronghold of the self-styled Islamic 
State. The current offensive by Arab and Kurdish fighters - with American and 
British support - started in June. Then, I-S controlled most of Raqqa. But now 
only a few hundred militants hold the centre of the city. The BBC is the only 
broadcaster to get access. Our Middle East correspondent Quentin Sommerville 
and cameraman Darren Conway sent us their report - which does contain some 
distressing images.', 6)
INSERT [VIDEO] ([video_id], [duration], [description], [quality_id])
VALUES (11, 248, 'Sixteen people were killed when a severe thunderstorm hit 
Moscow and the region around the Russian capital on Monday, officials say.', 6)
SET IDENTITY_INSERT [VIDEO] OFF

SET IDENTITY_INSERT [PERSON] ON
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (1, 'George', 'Alagiah', 'GAlagiah@bbc.com', NULL, 'BBC News at Six')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (2, 'Fiona', 'Bruce', 'FBruce@bbc.com', NULL, 'BBC News at Ten')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (3, 'Rachel', 'Burden', 'RBurden@bbc.com', NULL, 'BBC Breakfast')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (4, 'Evan', 'Davis', 'EDavis@bbc.com', NULL, 'Newsnight')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (5, 'James', 'Findley', 'JFindley@bbc.com', NULL, 'operator')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (6, 'Randal', 'Palomares', 'RPalomares@bbc.com', NULL, 'operator')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (7, 'Marinda', 'Vigo', 'vigo1970@gmail.com', 00123532, 'Football coach of famous syrian player in 2017')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (8, 'Nadia', 'Nadim', NULL, NULL, 'She plays for Denmark and Portland') 
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (9, 'Kathryne', 'Cipolla', 'kathy@yahoo.com', 75483495, 'Witness of protests in Barselona in 2017 September ')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (10, 'Matt', 'Barreto', NULL, NULL, 'Political expert')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (11, 'Ahmed', 'Connor', 'AConnor@bbc.com', NULL, 'operator')
INSERT INTO [PERSON] ([person_id], [first_name], [last_name], [email], [phone], [description])
VALUES (12, 'Lauren', 'Smith', 'LSmith@bbc.com', NULL, 'operator')
SET IDENTITY_INSERT [PERSON] OFF

SET IDENTITY_INSERT [INTERVIEWEE] ON
INSERT INTO [INTERVIEWEE] ([interviewee_id], [person_id], [description])
VALUES (1, 10, 'Expert opinion about Catalan referendum')
SET IDENTITY_INSERT [INTERVIEWEE] OFF

SET IDENTITY_INSERT [TRANSLATION] ON
INSERT [TRANSLATION] ([translation_id], [text], [audio]) VALUES (1, 'The Spanish 
government has pledged to stop a poll that was declared illegal by the countrys 
constitutional court. Police officers are preventing people from voting, and 
seizing ballot papers and boxes at polling stations. In the regional capital 
Barcelona, police used batons and fired rubber bullets during pro-referendum 
protests.', '/home/user/translation/spain_20170920.mp3') 
INSERT [TRANSLATION] ([translation_id], [text], [audio]) VALUES (2, 'According 
to BFMTV, the attacker was killed by French soldiers who were already in the 
station as part of Operation Sentinelle, which sees combat troops patrol streets 
and protect key sites amid an ongoing state of emergency.', '/home/user/translation/knifeAttack_20170921.mp3') 
SET IDENTITY_INSERT [TRANSLATION] OFF


SET IDENTITY_INSERT [SCENE_TYPE] ON
INSERT [SCENE_TYPE] ([scene_type_id], [scene]) VALUES (1, 'Stand-up')
INSERT [SCENE_TYPE] ([scene_type_id], [scene]) VALUES (2, 'Interview')
INSERT [SCENE_TYPE] ([scene_type_id], [scene]) VALUES (3, 'Scene')
INSERT [SCENE_TYPE] ([scene_type_id], [scene]) VALUES (4, 'Expert opinion')
SET IDENTITY_INSERT [SCENE_TYPE] OFF

SET IDENTITY_INSERT [OPERATOR] ON
INSERT INTO [OPERATOR] ([operator_id], [person_id]) VALUES (1, 5)
INSERT INTO [OPERATOR] ([operator_id], [person_id]) VALUES (2, 6)
INSERT INTO [OPERATOR] ([operator_id], [person_id]) VALUES (3, 11)
INSERT INTO [OPERATOR] ([operator_id], [person_id]) VALUES (4, 12)
SET IDENTITY_INSERT [OPERATOR] OFF

SET IDENTITY_INSERT [CORRESPONDENT] ON
INSERT INTO [CORRESPONDENT] ([correspondent_id], [address_id], [person_id], [salary], [specify], [operator_id], [experience])
VALUES (1, 11, 1, 5000, 'BBC News at Six', 1, '01/06/2017')
INSERT INTO [CORRESPONDENT] ([correspondent_id], [address_id], [person_id], [salary], [specify], [operator_id], [experience])
VALUES (2, 12, 2, 4700, 'BBC News at Ten', 2, '02/06/2017')
INSERT INTO [CORRESPONDENT] ([correspondent_id], [address_id], [person_id], [salary], [specify], [operator_id], [experience])
VALUES (3, 13, 3, 5100, 'BBC Breakfast', 3, '04/06/2017')
INSERT INTO [CORRESPONDENT] ([correspondent_id], [address_id], [person_id], [salary], [specify], [operator_id], [experience])
VALUES (4, 14, 4, 5100, 'Newsnight', 4, '01/06/2017')
SET IDENTITY_INSERT [CORRESPONDENT] OFF

SET IDENTITY_INSERT [DANGER] ON
INSERT [DANGER] ([danger_id], [danger_type]) VALUES (1, 'Very dangerous')
INSERT [DANGER] ([danger_id], [danger_type]) VALUES (2, 'Dangerous')
INSERT [DANGER] ([danger_id], [danger_type]) VALUES (3, 'Slightly dangerous')
INSERT [DANGER] ([danger_id], [danger_type]) VALUES (4, 'Safe')
SET IDENTITY_INSERT [DANGER] OFF

SET IDENTITY_INSERT [EVENT_TYPE] ON
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (1, 'Conferences', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (2, 'Meetings', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (3, 'Press Conferences ', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (4, 'War', 1)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (5, 'Investigation', 2)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (6, 'Exhibition', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (7, 'Сoncert', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (8, 'Sport event', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (9, 'Award ceremony', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (10, 'Protests', 2)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (11, 'Death', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (12, 'Refugees', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (13, 'Pets & animals', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (14, 'Speech', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (15, 'Women rights', 4)
INSERT [EVENT_TYPE] ([event_type_id], [type], [danger_id]) VALUES (16, 'Weather disasters', 4)
SET IDENTITY_INSERT [EVENT_TYPE] OFF

SET IDENTITY_INSERT [EVENT] ON
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (1, '28/09/2017', 15, 'Playboys Hugh Hefner dies aged 91', 11)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (2, '29/09/2017', 16, 'Rohingya Muslims fear the UN failed them', 12)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (3, '29/09/2017', 16, 'Grenfell: They are going to be angels', 12)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (4, '26/09/2017', 17, 'Catalonia Referendum: Vote would be unconstitutional says Spainish government', 10)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (5, '05/09/2017', 18, 'Hero dog rescues drowning family', 13)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (6, '27/09/2017', 19, 'Brexit situation', 14)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (7, '23/09/2017', 20, 'Saudi women rejoice at end of driving ban', 15)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (8, '20/09/2017', 21, 'Jeremy Corbyn: We are the political mainstream now', 14)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (9, '27/09/2017', 21, 'Refugee soccer star: From Syria to US', 12)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (10, '27/09/2017', 20, 'Inside the ruined capital of the Islamic State group', 4)
INSERT INTO [EVENT] ([event_id], [date], [address_id], [event_name], [event_type_id])
VALUES (11, '30/05/2017', 22, 'Moscow storm: 16 killed in Russian capital and region', 16)
SET IDENTITY_INSERT [EVENT] OFF

SET IDENTITY_INSERT [REPORTAGE] ON
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (1, 1, '28/09/2017 12:00:00', 1, 600)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (2, 2, '28/09/2017 12:00:00', 3, 610)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (3, 3, '28/09/2017 12:00:00', 2, 600)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (4, 4, '28/09/2017 18:00:00', 3, 580)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (5, 5, '28/09/2017 18:00:00', 3, 600)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (6, 6, '27/09/2017 21:00:00', 2, 570)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (7, 7, '27/09/2017 21:00:00', 4, 580)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (8, 8, '27/09/2017 21:00:00', 1, 605)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (9, 9, '27/09/2017 21:00:00', 1, 610)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (10, 10, '27/09/2017 21:00:00', 4, 590)
INSERT INTO [REPORTAGE] ([reportage_id], [event_id], [news_time], [correspondent_id], [duration])
VALUES (11, 11, '27/09/2017 21:00:00', 2, 580)
SET IDENTITY_INSERT [REPORTAGE] OFF

SET IDENTITY_INSERT [WITNESS_VIDEO] ON
INSERT INTO [WITNESS_VIDEO] ([witness_video_id], [person_id], [reportage_id], [video_id]) VALUES (1, 7, 9, 6)
INSERT INTO [WITNESS_VIDEO] ([witness_video_id], [person_id], [reportage_id], [video_id]) VALUES (2, 9, 4, 5)
SET IDENTITY_INSERT [WITNESS_VIDEO] OFF

SET IDENTITY_INSERT [CORRESPONDENT_VIDEO] ON
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (1, 1, 1, NULL, 1, NULL, NULL, 1)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (2, 3, 2, NULL, 2, NULL, NULL, 2)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (3, 2, 4, NULL, 3, NULL, NULL, 3)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (4, 3, 3, NULL, 4, NULL, NULL, 4)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (5, 1, 2, 1, 8, NULL, NULL, 5)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (6, 3, 4, NULL, 5, NULL, NULL, 7)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (7, 2, 3, NULL, 6, NULL, NULL, 8)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (8, 4, 2, NULL, 7, NULL, NULL, 6)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (9, 1, 1, NULL, 9, NULL, NULL, 9)
INSERT [CORRESPONDENT_VIDEO] ([correspondent_video_id], [correspondent_id], [scene_type_id], [translation_id], [reportage_id], [text], [interviewee_id], [video_id])
VALUES (10, 4, 2, NULL, 10, NULL, NULL, 10)
SET IDENTITY_INSERT [CORRESPONDENT_VIDEO] OFF 