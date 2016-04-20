/* populate the musicdex */

insert into artist_genre
( description )
values
( 'Rock'),
( 'Pop' ),
( 'Blues'), ('Metal'), ('Techno'), ('House'), ('Rap'), ('Disco');

insert into song_genre
( description )
values
( 'Rock'),
( 'Pop' ),
( 'Blues'), ('Metal'), ('Techno'), ('House'), ('Rap'), ('Disco'), ('Punk');

insert into song_style
( description )
values
('Ballad'), ('Love Song'), ('Agit'), ('Instrumental');

insert into user_type
(description)
values ('Audience'), ('Artist');

insert into artist_type
(description)
values ('Band'), ('Singer-Songwriter'), ('Solo Artist');

insert into city
(city_code, city_name)
values
('PDX', 'Portland');


insert into artist
( name, city_id, created_dt, last_modified_dt, profile, active, artist_genre_id, artist_type_id )
values
( 'PDX Icons', 1, '2016-04-05', '2016-04-05', "Portland Classic Rock!", 1, 1, 1 );

insert into song
( title, url_location, song_info, writing_credit, created_dt, last_modified_dt, artist_id, intro_url, outro_url, song_style_id, song_genre_id)
values
('Blues For Holly', "http://www.pdxicons.com/wp-content/uploads/Blues-for-Holly.mp3", 'Song for my first dog', 'Irvine', '2016-04-05', '2016-04-05', 1, NULL, NULL, 1, 3 ),
('Espresso Delight', "http://www.pdxicons.com/wp-content/uploads/Espresso-delight.mp3", 'I like coffee', 'Irvine', '2016-04-05', '2016-04-05', 1, NULL, NULL, 1, 3 ),
('Everyman Blues', "http://www.pdxicons.com/wp-content/uploads/Everyman-Blues.mp3", 'Always seem to end up here, strumming these strings and playing for beer', 'Irvine', '2016-04-05', '2016-04-05', 1, NULL, NULL, 3, 1 ),
('Sway', "http://www.pdxicons.com/wp-content/uploads/sway.mp3", 'Looking for the one!', 'Irvine', '2016-04-05', '2016-04-05', 1, NULL, NULL, 2, 3 );
