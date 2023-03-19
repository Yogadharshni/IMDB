--table - 1
--name moviesdata
CREATE TABLE moviesdata(
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    hero TEXT,
    heroine TEXT,
    year INTEGER,
    genre TEXT

);
--add rows

INSERT INTO moviesdata
VALUES(1, "Soorarai pottru", "sudha kongara", "Surya", "aparna balamurali", 2020, "action/drama"),
    (2, "Thunivu", "H.vinoth", "Ajith kumar", "Manju warrier", 2023, "action/thriller"),
    (3, "Varisu", "Vamshi Paidipally", "Vijay", "Rashmika Mandanna", 2023, "action/drama");

-----------------------------------------------------------------------------------------------------------------------------------
    --table - 2

CREATE TABLE imagedata(
        image_id INTEGER Foreign KEY,
        movie_poster TEXT,

    );
--add rows TABLE - 2
INSERT INTO imagedata
VALUES(1, "https://www.deccanherald.com/sites/dh/files/articleimages/2020/11/16/file79eu5fnczvr1e74ix3eg-914541-1605524324.jpg"),
    (1, "https://m.media-amazon.com/images/I/81KAHBjkbIL._RI_.jpg"),
    (1, "https://www.theweek.in/content/dam/week/news/entertainment/images/2020/10/26/Soorarai-Pottru-suriya.jpg"),
    (2, "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/thunivu-et00340798-1666182985.jpg"),
    (2, "https://m.media-amazon.com/images/M/MV5BYTVjOTkwNTYtOTg3YS00NDhjLTk2NTYtMTQzYjljYjhmMjFhXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg"),
    (3, "https://m.media-amazon.com/images/M/MV5BZGIwNWFhOGYtNjFmMi00ZWJjLWE0ZTEtODg3OWE1Y2M0NzVmXkEyXkFqcGdeQXVyMTMxODA4Njgx._V1_FMjpg_UX1000_.jpg"),
    (3, "https://m.media-amazon.com/images/M/MV5BY2FhOWM5M2YtOTdkYS00OTdlLWEzYzQtMmIwZTUzY2E5YzE3XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg")

---------------------------------------------------------------------------------------------------------------------------------

    --table - 3
CREATE TABLE review(
        review_id INTEGER foreign key,
        review_data text
    )
--add rows TABLE - 3
INSERT INTO review
VALUES(1, "Surya's comeback"), (1, "Surya acting level top notch"), (1, "Sudha kongara is goat"),
    (2, "Ajith's acting level 8/10"), (2, "Great information about bank"),
    (3, "Vijay dance is always firee"), (3, "Good Family entertinment")


---------------------------------------------------------------------------------------------------------------------------------


    --table - 4
CREATE TABLE Skills(
        skill_id INTEGER foreign key,
        skill text
    )
--  - add rows TABLE - 4
INSERT INTO Skills
values(1, "Great Actor and Human being"),
    (2, "Humble and Handsome Star"),
    (3, "Next Super Star")



------------------------------------------------------------------------------------------------------------------------
--table - 5 
CREATE TABLE actorroll(
    roll_id INTEGER foreign key,
    roll text
)
INSERT INTO actorroll
VALUES(1, "Surya has three period of rolls as teenager,adult and family man"),
    (2, "ajith as gangster "),
    (3, "vijay as entrepreneur")

---------------------------------------------------------------------------------------------------------------------------

    select id, title, director, hero, heroine, year, genre, roll, review_data, skill, movie_poster from moviesdata 
inner JOIN actorroll 
on id = roll_id
inner join review 
on id = review_id
inner join Skills 
on id = skill_id
inner join imagedata
on id = image_id