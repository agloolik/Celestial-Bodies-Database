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
INSERT INTO galaxy(name, magnitude,naked_eye, notes) VALUES('Milky Way', -20.9, true, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.');
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
('Mercury', 
'Mercury is the closest planet to the Sun but, perhaps surprisingly, it does not have the highest temperatures. It is the second densest planet of the Solar System, but also the smallest planet. The structure of Mercury makes it the most similar planet to Earth.',
 false,
 427,
 -173,
 0.39,
 0,
 1, )