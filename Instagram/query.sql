SELECT
    photos.image_url,
    users.username
FROM photos
JOIN users 
    ON photos.user_id = users.id;

--

