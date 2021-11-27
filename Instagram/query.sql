SELECT
    photos.image_url,
    users.username
FROM photos
JOIN users 
    ON photos.user_id = users.id;

-- 1. finding 5 oldest users

SELECT
    username,
    DATE_FORMAT(created_at, '%D %M, %Y') AS joined_on
FROM users
ORDER BY created_at
LIMIT 5;

-- 2. most popular registration day

SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total_joined
FROM users
GROUP BY day
ORDER BY total_joined DESC;

-- 3. identify inactive users (users with no photos)

SELECT username
FROM users LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. identify most popular photo (and user who posted it)

SELECT
    users.username,
    photos.image_url,
    COUNT(*) AS total_likes
FROM photos
INNER JOIN likes
    ON photos.id = likes.photo_id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY likes.photo_id
ORDER BY total_likes DESC
LIMIT 10;

-- calculate avg number of photos per user

SELECT
    ROUND(
        (SELECT COUNT(*) FROM photos) /
        (SELECT COUNT(*) FROM users),
        2
    ) AS avg_posts;


SELECT ROUND(AVG(sub.total), 2) AS avg_posts
FROM (
	SELECT
        COUNT(p.id) AS total
    FROM users u
	LEFT JOIN photos p 
	ON u.id = p.user_id
	GROUP BY u.username
) sub;

-- 6. five most popular hashtags

SELECT
    tags.tag_name,
    COUNT(*) AS total
FROM tags
JOIN photo_tags
    ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7. finding bots - users who like every single photo

SELECT
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY users.id
HAVING num_likes = (
    SELECT COUNT(*) FROM photos
);