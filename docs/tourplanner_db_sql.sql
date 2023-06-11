CREATE TABLE "tours" (
    "tourId" varchar(40)   NOT NULL,
    "tourName" varchar(100)   NOT NULL,
    "tourDesc" varchar(300)   NOT NULL,
    "from" varchar(50)   NOT NULL,
    "to" varchar(50)   NOT NULL,
    "transportType" varchar(50)   NOT NULL,
    "distance" float   NULL,
    "estTime" varchar(50)   NULL,
    "routeInfo" varchar(300)   NULL,
    CONSTRAINT "pk_tours" PRIMARY KEY (
        "tourId"
     )
);

CREATE TABLE "tourlogs" (
    "tourLogId" varchar(40)   NOT NULL,
    "tourId" varchar(40)   NOT NULL,
    "date" varchar(50)   NOT NULL,
    "comment" varchar(300)   NOT NULL,
    "difficulty" varchar(20)   NOT NULL,
    "totalTime" varchar(20)   NOT NULL,
    "rating" varchar(20)   NOT NULL,
    CONSTRAINT "pk_tourlogs" PRIMARY KEY (
        "tourLogId"
     )
);

ALTER TABLE "tourlogs" ADD CONSTRAINT "fk_tourlogs_tourId" FOREIGN KEY ("tourId")
REFERENCES "tours" ("tourId") ON DELETE CASCADE;

