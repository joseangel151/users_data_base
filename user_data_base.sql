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
  "user_id" uuid NOT NULL,
  "category_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" varchar NOT NULL,
  "teach" varchar DEFAULT 'unknown'
);

CREATE TABLE "video" (
  "id" uuid UNIQUE PRIMARY KEY,
  "course_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into users(
id,
name,
last_name,
email,
password,
age
)values(
'332c3a84-cb07-4c2f-8111-7820fe6e4cdb',
'Jose',
'Gonzalez',
'joseangel151@gmail.com',
'18447882',
35);

insert into users (
 id,
 name,
 last_name,
 email,
 password,
 age
 ) values (
 '9e1511af-01ec-4ef8-9b3a-5c40fdf38291',
 'Luz',
 'Mavares',
 'Luzmavares@gmail.com',
 '17349968luz',
 37
 );

insert into categories (
id,
name) values (
'fb7bfb5e-224d-4afd-b528-aabbbe6417f5',
'Digital Marketing'
);

insert into categories (
id,
name) values (
'60f7798f-cff3-45ac-9fb1-0744d9a3c206',
'Professional development '
)

insert into courses (
  id,
  user_id,
  category_id,
  title,
  description,
  level,
  teach) values (
  'e9b90e90-7a40-4e67-ab65-1b36a28cf9c5',
  '332c3a84-cb07-4c2f-8111-7820fe6e4cdb',
  'fb7bfb5e-224d-4afd-b528-aabbbe6417f5',
  'Introduction to Digital Wellbeing',
  'Hoy en día, la tecnología juega un papel importante en la vida de la mayoría de las personas, pero ¿cómo podemos asegurarnos de que nos ayuda en lugar de distraernos? En este módulo descubrirás por qué es fundamental usar la tecnología de forma saludable y cómo puedes ser más consciente del uso que le das a Internet. También conocerás las distintas herramientas que puedes usar para desarrollar y mantener hábitos tecnológicos saludables.',
  'principiante',
  'Jorge Vicente'
);

 insert into courses (
  id,
  user_id,
  category_id,
  title,
  description,
  level,
  teach) values (
  'ee7817e3-4b8b-4869-8cb2-c430d165fd98',
  '9e1511af-01ec-4ef8-9b3a-5c40fdf38291',
  '60f7798f-cff3-45ac-9fb1-0744d9a3c206',
  'Machine Learning Crash Course',
  'With this course, youll learn the basics of machine learning through a series of lessons that include educational videos from Google researchers, text written specifically for beginners in the field, interactive visualizations of algorithms in action, and real-world case studies. In addition to learning new concepts, youll be able to put them into practice right away with guided programming exercises that introduce you to implementing models in TensorFlow, an open source artificial intelligence library.',
  'Advance',
  'Manuel Gonzalez'
  );
 
  insert into video (
  id,
  course_id,
  title,
  url
  )values(
'9e485c34-4458-459c-9ac5-58254a7f32e7',
 'e9b90e90-7a40-4e67-ab65-1b36a28cf9c5',
 'video: Introduction to Digital Wellbeing',
 'https://learndigital.withgoogle.com/activate/course/digital-marketing'
 );

 insert into video (
  id,
  course_id,
  title,
  url
  ) values (
'6b3322f1-0bae-4320-82c8-aac572970862',
 'ee7817e3-4b8b-4869-8cb2-c430d165fd98',
 'video: Machine Learning Crash Course',
 'https://learndigital.withgoogle.com/activate/course/machine-learning-crash-course'
 );
 