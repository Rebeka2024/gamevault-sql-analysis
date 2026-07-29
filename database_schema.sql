CREATE DATABASE GameVault;

USE GameVault;


CREATE TABLE Games (
    game_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    platform VARCHAR(50),
    release_year INT
);


CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    username VARCHAR(50),
    country VARCHAR(50),
    age INT
);


CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    game_id INT,
    units_sold INT,
    revenue DECIMAL(10,2),

    FOREIGN KEY (game_id)
    REFERENCES Games(game_id)
);


CREATE TABLE PlayerActivity (
    activity_id INT PRIMARY KEY,
    player_id INT,
    game_id INT,
    hours_played INT,

    FOREIGN KEY(player_id)
    REFERENCES Players(player_id),

    FOREIGN KEY(game_id)
    REFERENCES Games(game_id)
);
