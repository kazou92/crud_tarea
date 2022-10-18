CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "rol_id" uuid NOT NULL
);

CREATE TABLE "cursos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher_id" uuid NOT NULL,
  "category_id" uuid NOT NULL
);

CREATE TABLE "cursos_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "cursos_id" uuid NOT NULL
);

CREATE TABLE "category" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "rol" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "cursos_videos" ADD FOREIGN KEY ("cursos_id") REFERENCES "cursos" ("id");

ALTER TABLE "cursos" ADD FOREIGN KEY ("teacher_id") REFERENCES "users" ("id");

ALTER TABLE "cursos" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("rol_id") REFERENCES "rol" ("id");





insert  into rol (id,"name") values ('88fe62ad-ea0a-474e-8f6a-f57e73c1946e',
 'teacher'),('fcc8c577-2a2b-47d0-b39e-716ea49e9abf',
  'student'
 );


insert  into users (id,
name,
email,
"password",
  age,
  rol_id) values ('88fe62ad-ea0a-474e-8f6a-f57e73c1946e',
  'adler',
  'adlersejousnatgmail.com',
  'Avi72285269',
  31,
  '88fe62ad-ea0a-474e-8f6a-f57e73c1946e'),('fcc8c577-2a2b-47d0-b39e-716ea49e9abf',
  'steeve',
  'steevesainfleurgmail.com',
  'steev2022',
  4,
  'fcc8c577-2a2b-47d0-b39e-716ea49e9abf');
 
 



insert into category (id,"name") values ('a9a8dfb5-132f-48b6-89e4-1547f57d1aca',
'Programacion'),('040ed4e9-bf1c-4b6e-a4a6-38de4aadb133','desarrolo personal');


insert into cursos (id,
title,
description,
"level",
teacher_id,
category_id) values ('040ed4e9-bf1c-4b6e-a4a6-38de4aadb133',
'javascript',
'apender javascript desde cero','principiante',
'88fe62ad-ea0a-474e-8f6a-f57e73c1946e','a9a8dfb5-132f-48b6-89e4-1547f57d1aca'), 
('1208d08b-9385-42a3-b960-6f94ab09edc9',
'comportamiento',
'aprender como hablar en publico','principiante',
'88fe62ad-ea0a-474e-8f6a-f57e73c1946e','040ed4e9-bf1c-4b6e-a4a6-38de4aadb133');



insert into cursos_videos (id,title,url,cursos_id) values 
('151b055c-32d4-4426-bd1f-0ac5a169253a',
'aprender javasript desde cero',
'https://www.youtube.com/watch?v=ivdTnPl1ND0&t=29571s',
'040ed4e9-bf1c-4b6e-a4a6-38de4aadb133'),

('e79bb9eb-1a48-4006-aef2-331df07e95cf',
'aprender como hablar en publico',
'https://www.youtube.com/watch?v=PmFuykM643c',
'1208d08b-9385-42a3-b960-6f94ab09edc9');