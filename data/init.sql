-- SQLITE

CREATE TABLE IF NOT EXISTS agenda(
    codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
)

CREATE TABLE IF NOT EXISTS telefone(
    telefone INT NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
)

CREATE TABLE IF NOT EXISTS email(
    email VARCHAR(100) NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
)

-- MYSQL

CREATE TABLE IF NOT EXISTS agenda(
    codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS telefone(
    telefone INT NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
);

CREATE TABLE IF NOT EXISTS email(
    email VARCHAR(100) NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
);