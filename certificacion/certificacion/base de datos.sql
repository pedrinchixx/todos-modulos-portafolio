CREATE TABLE usuarios(
	id serial primary key,
	nombre VARCHAR(50) NOT NULL,
	email VARCHAR(40) NOT NULL,
	password VARCHAR(150) NOT NULL
);

CREATE TABLE categorias(
	id serial primary key,
	nombre VARCHAR(50) NOT NULL
);


CREATE TABLE publicaciones(
	id serial primary key,
	titulo VARCHAR(60) NOT NULL,
	contenido VARCHAR(4000) NOT NULL,
	fecha date NOT NULL,
	id_categoria INT NOT NULL,
	id_usuario INT NOT NULL,
       	imagen VARCHAR(255),
	FOREIGN KEY(id_categoria) REFERENCES categorias(id),
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id)
        
);


CREATE TABLE comentarios(
	id serial primary key,
	contenido VARCHAR(1000) NOT NULL,
	id_usuario INT NOT NULL,
	id_publicacion INT NOT NULL,
	fecha date NOT NULL DEFAULT NOW(),
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
	FOREIGN KEY(id_publicacion) REFERENCES publicaciones(id)
     
);

INSERT INTO categorias(nombre) VALUES('Infantil'), ('Arte');

INSERT INTO usuarios(nombre, email, password) VALUES('andres', 'andres2122@gmail.com', '65432'), ('carlos', 'carito23@gmail.com', '3456'), ('maria', 'mari43@gmail.com', '87654');


select * from categorias;

select * from usuarios;