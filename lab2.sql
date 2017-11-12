CREATE TABLE [CORRESPONDENT](
	[correspondent_id] [smallint] NOT NULL PRIMARY KEY,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[country] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[salary] [smallint] NULL,
	[specify] [varchar](50) NULL,
	[operator] [varchar](50) NOT NULL,
	[telephone_number] [char](15) NULL);

CREATE TABLE [EVENT](
	[event_id] [smallint] NOT NULL PRIMARY KEY,
	[date] [datetime] NOT NULL,
	[place] [varchar](50) NULL,
	[city] [varchar](50) NOT NULL,
	[danger_degree] [smallint] NULL,
	[event_type] [varchar](50) NULL);

CREATE TABLE [REPORTAGE](
	[title] [varchar](50) NOT NULL PRIMARY KEY,
	[correspondent_id] [smallint] NOT NULL,
	[event_id] [smallint] NOT NULL,
	[date] [datetime] NOT NULL,
	[quality] [smallint] NULL,
	[video] [bit] NULL,
	[news_time] [datetime] NOT NULL,
	[views] [int] NULL,
	[rating] [smallint] NULL,
	[description] [varchar](100) NULL);