CREATE TABLE tipos(
    id int primary key auto_increment,
    nombre varchar(255),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime
);

CREATE TABLE personas(
    id int primary key auto_increment,
    nombre varchar(255),
    apellido varchar(255),
    tipo_id int, 
    foreign key(tipo_id) references tipos(id),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime
);

CREATE TABLE productos(
    id int primary key auto_increment,
    nombre varchar(255),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime
);

CREATE TABLE compras(
    id int primary key auto_increment,
    persona_id int NOT NULL,
    producto_id int NOT NULL,
    fecha date NOT NULL,
    foreign key(producto_id) references productos(id),
    Foreign Key (persona_id) references personas(id),
    unique key(persona_id,producto_id,fecha),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime
);