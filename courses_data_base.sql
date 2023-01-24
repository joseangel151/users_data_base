CREATE TABLE "users" (
  "id" uuid UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar UNIQUE NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid UNIQUE PRIMARY KEY,
  "course_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" varchar NOT NULL,
  "teach" varchar DEFAULT 'unknown'
);

CREATE TABLE "video" (
  "id" uuid UNIQUE PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "video_id" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL,
  "categories_id" uuid NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("course_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id") REFERENCES "categories" ("categories_id");

ALTER TABLE "video" ADD FOREIGN KEY ("video_id") REFERENCES "courses" ("id");
