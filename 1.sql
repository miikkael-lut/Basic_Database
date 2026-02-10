--BEGIN;

CREATE TABLE Creator (
    UserID INT PRIMARY KEY NOT NULL,
    Username VARCHAR(50),
    Copyrights_strikes INT,
    Subscribers INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Video (
    VideoID INT PRIMARY KEY NOT NULL,
    UserID INT,  -- Lisätty UserID viittausta varten
    Video VARCHAR(200),  -- Muutettu INT -> VARCHAR, koska videon nimi/tunniste on yleensä merkkijono
    Views INT,  -- Muutettu VARCHAR -> INT, koska näyttökertojen määrä on yleensä kokonaisluku
    Likes INT,
    FOREIGN KEY (UserID) REFERENCES Creator(UserID) ON DELETE CASCADE
);

CREATE TABLE Comments (
    CommentID INT PRIMARY KEY NOT NULL,
    UserID INT,
    VideoID INT,  -- Muutettu TweetID -> VideoID, koska viittaus Video-tauluun
    FK_CommentID INT,
    Content VARCHAR(200),
    FOREIGN KEY (UserID) REFERENCES Creator(UserID) ON DELETE CASCADE,
    FOREIGN KEY (VideoID) REFERENCES Video(VideoID) ON DELETE CASCADE,
    FOREIGN KEY (FK_CommentID) REFERENCES Comments(CommentID) ON DELETE CASCADE
);

CREATE TABLE Playlist (
    PlaylistID INT PRIMARY KEY NOT NULL,  -- Lisätty PlaylistID pääavaimena
    UserID INT,
    VideoID INT,
    FOREIGN KEY (UserID) REFERENCES Creator(UserID) ON DELETE CASCADE,
    FOREIGN KEY (VideoID) REFERENCES Video(VideoID) ON DELETE CASCADE
);

CREATE TABLE Subscribe (
    SubscriberID INT PRIMARY KEY NOT NULL,
    SubscribeeID INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (SubscriberID) REFERENCES Creator(UserID) ON DELETE CASCADE,
    FOREIGN KEY (SubscribeeID) REFERENCES Creator(UserID) ON DELETE CASCADE
);

CREATE TABLE CreatorSubscriber (
    SubscriberID INT,
    CreatorID INT,
    PRIMARY KEY (SubscriberID, CreatorID),
    FOREIGN KEY (SubscriberID) REFERENCES Subscribe(SubscriberID) ON DELETE CASCADE,
    FOREIGN KEY (CreatorID) REFERENCES Creator(CreatorID) ON DELETE CASCADE
);

CREATE TABLE Advertise (
    AdvertiserID INT PRIMARY KEY NOT NULL,
	CompanyID INT,
    VideoID INT,
    FOREIGN KEY (VideoID) REFERENCES Video(VideoID) ON DELETE CASCADE
);

--END;