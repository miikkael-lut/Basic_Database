--Näytä Playlist 1
SELECT v.VideoID, v.Video, c.Username
FROM Video v
JOIN PlaylistVideo pv ON v.VideoID = pv.VideoID
JOIN Creator c ON v.UserID = c.UserID
WHERE pv.PlaylistID = 1;

--Videon 1 kommentit
Select CommentID, UserID, Content From Comments
WHERE VideoID = 1; 

-- Kommentit käyttäjänimillä
SELECT Username, Content 
From Comments c
Inner JOIN Creator cr on cr.UserID = c.UserID
Where c.UserID = 3 or c.UserID = 4;

--Creatorin suhde mainostajiin
SELECT AdvertiserID, Username, Advertiser 
From Advertise a
Inner Join Video cr ON cr.VideoID = A.VideoID INNER JOIN Creator c ON cr.VideoID = c.UserID;

--Katsotuimmat videot
SELECT Video, Username, Views  
From Video v
Inner join Creator c ON c.UserID = v.UserID
ORDER BY Views DESC;