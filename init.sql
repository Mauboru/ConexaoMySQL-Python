CREATE TABLE IF NOT EXISTS agenda (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS telefone (
    telefone INT NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
);

CREATE TABLE IF NOT EXISTS email (
    email varchar(100) NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    FOREIGN KEY (codigo) REFERENCES agenda(codigo)
);