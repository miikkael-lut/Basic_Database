# Basic_Database
SQL YouTube database project. Created with SQLite. Creates tables, explorers one to many connections, many to many connections. Creates simple and complex queries. Contains figure of data model.

## 1
## DEFINITION

YouTube database
In project ‘YouTube,’ database is developed for managing information about YouTube channels which are also the “users” of the site, be they
commenters or video creators and other information about videos, video comments, channel subscriptions. This database can be used by people
wanting to grow their social media presence or by people wanting to keep track of changes in social media environment. The database stores
information of biggest channels, content creators, playlists, likes, comments.
The following database queries have to be implemented: (1) List the information of a specific channel, their subscribers and when created. (2)
List all creators with 100 likes on their videos. (3) List all players sponsored by specific companies. (4) Show all matches of a given umpire.
(5) Show match information with player names, scores, dates and winners

## 2
## MODELING
2.1
Data model
Database design begins with concept analysis. The use of concept analysis leads to database design decisions that are independent of the data
and implementation. At this point of the project, the aim is to describe the conceptual model of the database that has been developed. Represent
the result either as a relational model, database diagram, data schema, or a freeform UML-style table structure.
Represent at least: Entities (concepts), relationships (the connection between concepts) and the cardinalities of the relationships (one-to-one
1:1, one-to-many 1:N, many-to-many N:M), and properties (attributes). Describe the model so that you point out the most important parts.
Each table/relation should have the necessary primary and foreign keys and the definition of data types.
Database in short text:
Figure 1 shows the data of the database. There are seven primary entities in the model. Due to the N:M relationship, there there is an interim
relations (PlaylistVideo). Most relationships between entities are one-to-many except Subscribe- Creator, where the cardinality is many-to-
many

<img width="706" height="487" alt="image" src="https://github.com/user-attachments/assets/ac38ce72-af82-4cb7-9e37-10daeb8320ad" />

Figure 1: Data model

## 3
## DATABASE IMPLEMENTATION
Database in text
During implementation, the following constraints are created for the relations:
1. Creator:
o Contains information about content creators, such as:
▪
UserID: Unique identifier for the creator (Primary Key).
▪
Username: The creator's username (must be unique).
▪
Copyrights_strikes: Number of copyright strikes against the creator
(default is 0).
▪
Subscribers: Number of subscribers the creator has (must be non-
negative).
▪
CreatedAt: Timestamp of when the creator account was created.
2. Video:
o Contains information about videos, such as:
▪
VideoID: Unique identifier for the video (Primary Key).
▪
UserID: Identifier of the creator who uploaded the video (Foreign
Key referencing Creator).
▪
Video: Name or path of the video.
▪
Views: Number of views the video has (default is 0).
▪
Likes: Number of likes the video has (default is 0).
3. Comments:
o Contains information about comments, such as:
▪
CommentID: Unique identifier for the comment (Primary Key).
▪
UserID: Identifier of the creator who posted the comment (Foreign
Key referencing Creator).
▪
VideoID: Identifier of the video the comment belongs to (Foreign
Key referencing Video).
▪
FK_CommentID: Identifier of the parent comment if this is a reply
(Foreign Key referencing Comments).

▪
Content: The text content of the comment.
4. Playlist:
o Contains information about playlists, such as:
▪
PlaylistID: Unique identifier for the playlist (Primary Key).
▪
UserID: Identifier of the creator who created the playlist (Foreign
Key referencing Creator).
5. PlaylistVideo:
o A junction table that connects Playlist and Video in a many-to-many
relationship:
▪
PlaylistID: Identifier of the playlist (Foreign Key referencing
Playlist).
▪
VideoID: Identifier of the video in the playlist (Foreign Key
referencing Video).
▪
The combination of PlaylistID and VideoID forms the Primary Key.
6. Subscribe:
o Contains information about subscriptions between creators:
▪
SubscriberID: Identifier of the creator who is subscribing (Foreign
Key referencing Creator).
▪
SubscribeeID: Identifier of the creator being subscribed to (Foreign
Key referencing Creator).
▪
CreatedAt: Timestamp of when the subscription was created.
▪
The combination of SubscriberID and SubscribeeID forms the
Primary Key.
7. Advertise:
o Contains information about advertisements, such as:
▪
AdvertiserID: Unique identifier for the advertiser (Primary Key).
▪
Advertiser: Advertisers name.
▪
VideoID: Identifier of the video being advertised (Foreign Key
referencing Video).
1. Relationships:
2. Creator and Video:
o One Creator can create many Videos.

o Relationship: 1:N (One-to-Many).
3. Creator and Comments:
o One Creator can post many Comments.
o Relationship: 1:N (One-to-Many).
4. Video and Comments:
o One Video can have many Comments.
o Relationship: 1:N (One-to-Many).
5. Creator and Playlist:
o One Creator can create many Playlists.
o Relationship: 1:N (One-to-Many).
6. Playlist and Video:
o One Playlist can contain many Videos.
o One Video can belong to many Playlists.
o Relationship: N:N (Many-to-Many), implemented via the PlaylistVideo
junction table.
7. Creator and Creator (via Subscribe):
o One Creator can subscribe to many other Creators.
o One Creator can be subscribed to by many other Creators.
o Relationship: N:N (Many-to-Many), implemented via the Subscribe
junction table.
8. Video and Advertise:
o One Video can be associated with many Advertise records.
o Relationship: 1:N (One-to-Many).
