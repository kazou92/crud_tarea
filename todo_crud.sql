CREATE TABLE "crud_tarea" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "is_completed" boolean
);

insert into crud_tarea (title,description,is_completed) values 
('limpiar la casa ',
'tiene que limpiar el lunes',
true
),('lavar los platos',
'lavar los platos de los dias de la semana',
false

),('cocinar',
'cocinar cada 3 dias de la semana',
true
),('comprar los remedios',
'comprar los remedios cada su abuelo lo necesite',
true
),('hacer ejercicio',
'hacer ejercicio todos los dias de la semana',
false

);