--liquibase formatted sql

--changeSet heberson:1

CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(255),
    description VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)  ENGINE=INNODB;

INSERT INTO app.items (title, description, created_at, updated_at) VALUES ('Carro', 'Grand Siena', '2018-11-20T14:59:14', '2018-11-20T14:59:14');
INSERT INTO app.items (title, description, created_at, updated_at) VALUES ('Biclicleta', 'BMX', '2018-11-20T14:59:14', '2018-11-20T14:59:14');
INSERT INTO app.items (title, description, created_at, updated_at) VALUES ('Computador', 'Dell I7', '2018-11-20T14:59:14', '2018-11-20T14:59:14');
INSERT INTO app.items (title, description, created_at, updated_at) VALUES ('Mesa', 'Redonda', '2018-11-20T14:59:14', '2018-11-20T14:59:14');
INSERT INTO app.items (title, description, created_at, updated_at) VALUES ('Garrafa', 'Termica', '2018-11-20T14:59:14', '2018-11-20T14:59:14');

--rollback DROP TABLE app.items;
--rollback DELETE FROM app.items WHERE title = 'Carro';
--rollback DELETE FROM app.items WHERE title = 'Biclicleta';
--rollback DELETE FROM app.items WHERE title = 'Computador';
--rollback DELETE FROM app.items WHERE title = 'Mesa';
--rollback DELETE FROM app.items WHERE title = 'Garrafa';
