CREATE TABLE planet_type (
  planet_type_id SERIAL PRIMARY KEY,
  name VARCHAR(80) UNIQUE NOT NULL,
  description TEXT
);

INSERT INTO planet_type(name, description) 
VALUES
('Terrestrial', 'These are planets with solid, rocky surfaces'),
('Gas giants', 'These are planets made of gas and are the largest planets in a solar system'),
('Ice giants', 'These are planets that are so far from their Sun that they are frozen solid');

CREATE TABLE planet (
  planet_id SERIAL PRIMARY KEY, 
  name VARCHAR(80) UNIQUE ,
  description TEXT, 
  has_life BOOLEAN,
  planet_type INTEGER REFERENCES planet_type(planet_type_id), 
  star_id INTEGER REFERENCES star(star_id)
) ;
