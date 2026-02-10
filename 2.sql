-- Lisää Creator-tauluun
INSERT INTO Creator (UserID, Username, Copyrights_strikes, Subscribers) VALUES
(1, 'T-Series', 0, 9000000);
INSERT INTO Creator (UserID, Username, Copyrights_strikes, Subscribers) VALUES
(2, 'Cocomelon', 0, 7000000);
INSERT INTO Creator (UserID, Username, Copyrights_strikes, Subscribers) VALUES
(3, 'PewDiePie', 0, 5000000);
INSERT INTO Creator (UserID, Username, Copyrights_strikes, Subscribers) VALUES
(4, 'Justin_Bieber', 0, 4000000);
INSERT INTO Creator (UserID, Username, Copyrights_strikes, Subscribers) VALUES
(5, 'Marques_Brownlee', 0, 1000000);

-- Lisää Video-tauluun
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(1, 1, 'Vaaste Song', 7000, 500);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(2, 1, 'CRAZXY: Yun H', 6000, 440);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(3, 1, 'Aashiqui 2', 4000, 350);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(4, 2, 'Baby shark', 50000, 1800);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(5, 2, 'Wheels on the Bus', 2000, 210);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(6, 2, 'Yes Yes Playground Song', 1800, 100);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(7, 3, 'Funny montage', 5000, 500);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(8, 3, 'I got RAIDED in Minecraft!!', 4000, 250);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(9, 3, 'BOTTLEFLIP CHALLENGE', 3000, 140);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(10, 4, 'Baby', 48000, 2000);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(11, 4, 'Sorry', 30000, 1250);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(12, 5, 'Apple Vision Pro Impressions', 5000, 250);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(13, 5, 'OnePlus 6 Review', 3100, 210);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(14, 5, 'Driving Tesla Cybertruck', 2800, 180);
INSERT INTO Video (VideoID, UserID, Video, Views, Likes) VALUES
(15, 5, 'Playstation 5 Unboxing', 1500, 100);

-- Lisää Comments-tauluun
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(1, 1, 1, NULL, 'My very first video, do you like it?');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(2, 2, 1, NULL, 'Great video!');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(3, 1, 1, NULL, 'Thanks');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(4, 3, 1, NULL, 'Very nice video');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(5, 4, 1, NULL, 'I really liked the video!');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(6, 4, 9, NULL, 'Very cool video :)');
INSERT INTO Comments (CommentID, UserID, VideoID, FK_CommentID, Content) VALUES
(7, 3, 9, NULL, 'Thanks ;)');

-- Lisää Playlist-tauluun
INSERT INTO Playlist (PlaylistID, UserID) VALUES
(1, 1);
INSERT INTO Playlist (PlaylistID, UserID) VALUES
(2, 1);
INSERT INTO Playlist (PlaylistID, UserID) VALUES
(3, 2);
INSERT INTO Playlist (PlaylistID, UserID) VALUES
(4, 2);
INSERT INTO Playlist (PlaylistID, UserID) VALUES
(5, 5);


INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(1, 1);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(1, 2);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(1, 3);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(2, 7);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(2, 8);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(2, 9);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(2, 10);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(3, 3);
INSERT INTO PlaylistVideo (PlaylistID, VideoID) VALUES
(3, 11);

-- Lisää Subscribe-tauluun
INSERT INTO Subscribe (SubscriberID, SubscribeeID) VALUES
(2, 1);
INSERT INTO Subscribe (SubscriberID, SubscribeeID) VALUES
(3, 1);
INSERT INTO Subscribe (SubscriberID, SubscribeeID) VALUES
(4, 1);
INSERT INTO Subscribe (SubscriberID, SubscribeeID) VALUES
(5, 3);
INSERT INTO Subscribe (SubscriberID, SubscribeeID) VALUES
(1, 4);

-- Lisää Advertise-tauluun
INSERT INTO Advertise (AdvertiserID, Advertiser, VideoID) VALUES
(101, 'Citymarket', 1);
INSERT INTO Advertise (AdvertiserID, Advertiser, VideoID) VALUES
(102, 'Coca-Cola', 2);
INSERT INTO Advertise (AdvertiserID, Advertiser, VideoID) VALUES
(103, 'Citymarket', 3);
INSERT INTO Advertise (AdvertiserID, Advertiser, VideoID) VALUES
(104, 'Pepsi', 4);
INSERT INTO Advertise (AdvertiserID, Advertiser, VideoID) VALUES
(105,'Coca-Cola', 5);