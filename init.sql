CREATE DATABASE IF NOT EXISTS DEV;
USE DEV;

CREATE TABLE IF NOT EXISTS FACTS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CONTENT VARCHAR(255) NOT NULL
);

INSERT INTO FACTS(ID,CONTENT) VALUES
    (1,'Cats spend 70% of their lives sleeping'),
    (2,'A cat was the Mayor of an Alaskan town for 20 years'),
    (3,'The record for the longest cat ever is 48.5 inches'),
    (4,'The richest cat in the world had £7 million'),
    (5,'Cats walk like camels and giraffes'),
    (6,'Isaac Newton invented the cat door'),
    (7,'In 1963 a cat went to space'),
    (8,'Ancient Egyptians would shave off their eyebrows when their cats died'),
    (9,'A house cat can reach speeds of up to 30mph'),
    (10,'The oldest cat in the world was 38 years old!');
