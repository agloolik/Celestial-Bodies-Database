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
  name VARCHAR(80) UNIQUE NOT NULL,
  description TEXT, 
  has_life BOOLEAN,
  max_temp_celcius NUMERIC(6,3),
  min_temp_celcius NUMERIC(6,3),
  distance_to_sun_au NUMERIC(6,3),
  number_of_moons INTEGER,
  planet_type INTEGER REFERENCES planet_type(planet_type_id), 
  star_id INTEGER REFERENCES star(star_id)
) ;

INSERT INTO planet(
  name, 
  description, 
  has_life, 
  max_temp_celcius,
  min_temp_celcius,
  distance_to_sun_au,
  number_of_moons,
  planet_type,
  star_id)
VALUES
( )