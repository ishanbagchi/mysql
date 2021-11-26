INSERT INTO users(username)
VALUES
    ('BlueTheCat'),
    ('CharlieBrown'),
    ('ColtSteele'),
    ('IshanBagchi');

INSERT INTO photos(image_url, user_id)
VALUES
    ('/dside3', 1),
    ('/mdie34', 2),
    ('/vidjo4', 2);

INSERT INTO comments(
    comment_text,
    user_id,
    photo_id
)
VALUES
    ('Meow!', 1, 2),
    ('Amazing Shot!', 3, 2),
    ('I <3 this', 2, 1);

INSERT INTO likes(user_id, photo_id)
VALUES
    (1, 1), (2, 1), (1, 2), (1, 3), (3, 3);

INSERT INTO follows(follower_id, followee_id)
VALUES
    (1, 2), (1, 3), (3, 1), (2, 3);

INSERT INTO tags(tag_name)
VALUES
    ('adorable'),
    ('cute'),
    ('sunrise');

INSERT INTO photo_tags(photo_id, tag_id)
VALUES
    (1,1),(1,2),(2,3),(3,2);
