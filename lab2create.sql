CREATE TABLE [ADDRESS](
	[address_id] [smallint] NOT NULL PRIMARY KEY,
	[street] [varchar](50) NULL,
	[house_number] [smallint] NULL,
	[building_number] [smallint] NULL,
	[city_id] [smallint] NOT NULL
);

CREATE TABLE [CITY](
	[city_id] [smallint] NOT NULL PRIMARY KEY,
	[city_name] [varchar](50) NOT NULL,
	[country_id] [smallint] NOT NULL
);

CREATE TABLE [CORRESPONDENT](
	[correspondent_id] [smallint] NOT NULL PRIMARY KEY,
	[address_id] [smallint] NOT NULL,
	[person_id] [smallint] NOT NULL,
	[salary] [smallint] NULL,
	[specify] [varchar](50) NULL,
	[operator_id] [smallint] NOT NULL
);

CREATE TABLE [CORRESPONDENT_VIDEO](
	[correspondent_video_id] [smallint] NOT NULL PRIMARY KEY,
	[correspondent_id] [smallint] NOT NULL,
	[scene_type_id] [smallint] NOT NULL,
	[translation_id] [smallint] NULL,
	[reportage_id] [smallint] NOT NULL,
	[text] [varchar](1000) NULL,
	[interviewee_id] [smallint] NULL,
	[video_id] [smallint] NOT NULL
);

CREATE TABLE [COUNTRY](
	[country_id] [smallint] NOT NULL PRIMARY KEY,
	[official_name] [varchar](50) NOT NULL
);

CREATE TABLE [DANGER](
	[danger_id] [smallint] NOT NULL PRIMARY KEY,
	[danger_type] [varchar](50) NOT NULL
);

CREATE TABLE [EVENT](
	[event_id] [smallint] NOT NULL PRIMARY KEY,
	[date] [datetime] NOT NULL,
	[address_id] [smallint] NOT NULL,
	[event_name] [varchar](100) NOT NULL,
	[event_type_id] [smallint] NOT NULL
);

CREATE TABLE [EVENT_TYPE](
	[event_type_id] [smallint] NOT NULL PRIMARY KEY,
	[danger_id] [smallint] NULL,
	[type] [varchar](50) NOT NULL
);

CREATE TABLE [INTERVIEWEE](
	[interviewee_id] [smallint] NOT NULL PRIMARY KEY,
	[person_id] [smallint] NOT NULL,
	[description] [varchar](1000) NULL
);

CREATE TABLE [OPERATOR](
	[operator_id] [smallint] NOT NULL PRIMARY KEY,
	[person_id] [smallint] NOT NULL 
);

CREATE TABLE [PERSON](
	[person_id] [smallint] NOT NULL PRIMARY KEY,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[phone] [nchar](20) NULL,
	[description] [varchar](50) NOT NULL
);

CREATE TABLE [QUALITY](
	[quality_id] [smallint] NOT NULL PRIMARY KEY,
	[quality] [varchar](50) NOT NULL 
);

CREATE TABLE [REPORTAGE](
	[reportage_id] [smallint] NOT NULL PRIMARY KEY,
	[event_id] [smallint] NOT NULL,
	[date] [datetime] NOT NULL,
	[news_time] [datetime] NOT NULL
);

CREATE TABLE [SCENE_TYPE](
	[scene_type_id] [smallint] NOT NULL PRIMARY KEY,
	[scene] [varchar](50) NOT NULL 
);

CREATE TABLE [TRANSLATION](
	[translation_id] [smallint] NOT NULL PRIMARY KEY,
	[text] [varchar](1000) NOT NULL,
	[audio] [varchar](100) NOT NULL 
);

CREATE TABLE [VIDEO](
	[video_id] [smallint] NOT NULL PRIMARY KEY,
	[duration] [datetime] NOT NULL,
	[description] [varchar](1000) NULL,
	[quality_id] [smallint] NOT NULL 
);

CREATE TABLE [WITNESS_VIDEO](
	[witness_video_id] [smallint] NOT NULL PRIMARY KEY,
	[person_id] [smallint] NOT NULL,
	[reportage_id] [smallint] NOT NULL,
	[video_id] [smallint] NOT NULL
);

CREATE UNIQUE INDEX [IX_Country] on [COUNTRY] (
	[official_name] ASC
);

CREATE UNIQUE INDEX [IX_Correspondent] ON [CORRESPONDENT] (
	[person_id] ASC
);

CREATE UNIQUE INDEX [IX_Operator] ON [OPERATOR] (
	[person_id] ASC
);

/*unique video?*/

ALTER TABLE [ADDRESS]  WITH CHECK 
ADD  CONSTRAINT [FK_ADDRESS_CITY] FOREIGN KEY([city_id])
REFERENCES [CITY] ([city_id])

ALTER TABLE [CITY]  WITH CHECK 
ADD  CONSTRAINT [FK_CITY_COUNTRY] FOREIGN KEY([country_id])
REFERENCES [COUNTRY] ([country_id])

ALTER TABLE [CORRESPONDENT]  WITH CHECK
ADD  CONSTRAINT [FK_CORRESPONDENT_ADDRESS] FOREIGN KEY([address_id])
REFERENCES [ADDRESS] ([address_id])

ALTER TABLE [CORRESPONDENT]  WITH CHECK 
ADD  CONSTRAINT [FK_CORRESPONDENT_OPERATOR1] FOREIGN KEY([operator_id])
REFERENCES [OPERATOR] ([operator_id])

ALTER TABLE [CORRESPONDENT]  WITH CHECK 
ADD  CONSTRAINT [FK_CORRESPONDENT_PERSON] FOREIGN KEY([person_id])
REFERENCES [PERSON] ([person_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_CORRESPONDENT_VIDEO_VIDEO] FOREIGN KEY([video_id])
REFERENCES [VIDEO] ([video_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_CORRESPONDENT] FOREIGN KEY([correspondent_id])
REFERENCES [CORRESPONDENT] ([correspondent_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_INTERVIEWEE] FOREIGN KEY([interviewee_id])
REFERENCES [INTERVIEWEE] ([interviewee_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_REPORTAGE] FOREIGN KEY([reportage_id])
REFERENCES [REPORTAGE] ([reportage_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_SCENE_TYPE] FOREIGN KEY([scene_type_id])
REFERENCES [SCENE_TYPE] ([scene_type_id])

ALTER TABLE [CORRESPONDENT_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_TRANSLATION] FOREIGN KEY([translation_id])
REFERENCES [TRANSLATION] ([translation_id])

ALTER TABLE [EVENT]  WITH CHECK 
ADD  CONSTRAINT [FK_EVENT_ADDRESS] FOREIGN KEY([address_id])
REFERENCES [ADDRESS] ([address_id])

ALTER TABLE [EVENT]  WITH CHECK 
ADD  CONSTRAINT [FK_EVENT_EVENT_TYPE1] FOREIGN KEY([event_type_id])
REFERENCES [EVENT_TYPE] ([event_type_id])

ALTER TABLE [EVENT_TYPE]  WITH CHECK 
ADD  CONSTRAINT [FK_EVENT_TYPE_DANGER] FOREIGN KEY([danger_id])
REFERENCES [DANGER] ([danger_id])

ALTER TABLE [INTERVIEWEE]  WITH CHECK 
ADD  CONSTRAINT [FK_INTERVIEWEE_PERSON] FOREIGN KEY([person_id])
REFERENCES [PERSON] ([person_id])

ALTER TABLE [OPERATOR]  WITH CHECK 
ADD  CONSTRAINT [FK_OPERATOR_PERSON] FOREIGN KEY([person_id])
REFERENCES [PERSON] ([person_id])

ALTER TABLE [REPORTAGE]  WITH CHECK 
ADD  CONSTRAINT [FK_REPORTAGE_EVENT] FOREIGN KEY([event_id])
REFERENCES [EVENT] ([event_id])

ALTER TABLE [VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_VIDEO_QUALITY] FOREIGN KEY([quality_id])
REFERENCES [QUALITY] ([quality_id])

ALTER TABLE [WITNESS_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_WITNESS_VIDEO_PERSON] FOREIGN KEY([person_id])
REFERENCES [PERSON] ([person_id])

ALTER TABLE [WITNESS_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_WITNESS_VIDEO_REPORTAGE1] FOREIGN KEY([reportage_id])
REFERENCES [REPORTAGE] ([reportage_id])

ALTER TABLE [WITNESS_VIDEO]  WITH CHECK 
ADD  CONSTRAINT [FK_WITNESS_VIDEO_VIDEO] FOREIGN KEY([video_id])
REFERENCES [VIDEO] ([video_id])

ALTER TABLE [QUALITY]
ADD CONSTRAINT [CK_QUALITY_quality]
CHECK ([quality] LIKE '144p' OR [quality] LIKE '240p' OR [quality] LIKE '360p' OR [quality] LIKE '480p' OR [quality] LIKE '720p' OR [quality] LIKE '1080p' OR [quality] LIKE '4096p');
