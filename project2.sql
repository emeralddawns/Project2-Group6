DROP TABLE IF EXISTS communities CASCADE;
DROP TABLE IF EXISTS listing CASCADE;
DROP TABLE IF EXISTS airbnb_loc CASCADE;


CREATE TABLE communities (
    community_area int,
    neighborhood varchar(30) PRIMARY KEY
);

CREATE TABLE listing (
    "id" int PRIMARY KEY,
    host_id int NOT NULL,
    host_name text NOT NULL,
    room_type text NOT NULL,
    price money   NOT NULL,
    minimum_nights int   NOT NULL,
    number_of_reviews int   NOT NULL,
    last_review date   NOT NULL,
    reviews_per_month float   NOT NULL,
    calculated_host_listings_count int   NOT NULL,
    availability_365 int   NOT NULL
);

CREATE TABLE airbnb_loc (
    "id" int PRIMARY KEY,
    address text   NOT NULL,
    neighborhood text   NOT NULL,
    latitude float   NOT NULL,
    longitude float   NOT NULL,
	FOREIGN KEY ("id") REFERENCES listing("id"),
	FOREIGN KEY (neighborhood) REFERENCES communities(neighborhood)
);


