CREATE TABLE Sheet1(Column_1 VARCHAR(10));
INSERT INTO Sheet1 (Column_1) VALUES 
('-- 1. Vytvorenie databázy pre projekt
CREATE DATABASE IF NOT EXISTS skolsky_system;
USE skolsky_system;

-- 2. Vytvorenie tabuľky pre triedy
CREATE TABLE triedy (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazov VARCHAR(10) NOT NULL UNIQUE
);

-- 3. Vytvorenie tabuľky pre žiakov (obsahuje cudzí kľúč na triedy)
CREATE TABLE ziaci (
    id INT PRIMARY KEY AUTO_INCREMENT,
    meno VARCHAR(50) NOT NULL,
    priezvisko VARCHAR(50) NOT NULL,
    trieda_id INT,
    FOREIGN KEY (trieda_id) REFERENCES triedy(id) ON DELETE SET NULL
);

-- 4. Vloženie tried podľa zadania (4.A, 4.M, 3.G)
INSERT INTO triedy (nazov) VALUES ('4.A'), ('4.M'), ('3.G');

-- 5. Vloženie žiakov (3M študenti)
INSERT INTO ziaci (meno, priezvisko, trieda_id) VALUES 
('Martin', 'Michalko', 1),
('Marek', 'Mlynár', 2),
('Michal', 'Matišák', 3);');