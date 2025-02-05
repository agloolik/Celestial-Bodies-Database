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

INSERT INTO planet_type(name, description) 
VALUES
('Dwarf Planet', 
'A dwarf planet is a small planetary-mass object that is in direct orbit around the Sun, massive enough to be gravitationally rounded, but insufficient to achieve orbital dominance like the eight classical planets of the Solar System.'),


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
  number_of_rings,
  planet_type,
  star_id)
VALUES
 ('Mercury', 
 'Mercury is the closest planet to the Sun but, perhaps surprisingly, it does not have the highest temperatures. It is the second densest planet of the Solar System, but also the smallest planet. The structure of Mercury makes it the most similar planet to Earth.',
 false, 427, -173, 0.39, 0, 0, 1, 1),
 ('Venus',
 'Venus is the second planet from the Sun and the sixth-largest. Together with Mercury, they are the only planets without a satellite, even though Mercury is closer to the sun, Venus is the hottest planet.',
 false, 490, 446, 0.718, 0, 0, 1, 1),
 ('Earth',
 'Earth is the third planet from the Sun and the fifth largest planet in the Solar System with the highest density. It is currently the only known location where life is present.',
 true, 58, -88, 1, 1, 0, 1, 1),
 ('Mars',
 'Mars is the fourth planet from the Sun and the second-smallest planet with a thin atmosphere, having the surface features reminiscent both of the impact craters of the Moon, and the valleys, deserts and polar ice caps of Earth. It is the most widely searched planet for life.',
 null, 35, -153, 1.52, 2,0,1, 1),
 ('Jupiter',
 'Jupiter is the fifth planet from the Sun and the largest planet of the Solar System. It is the oldest planet of the Solar System thus it was the first to take shape out of the remains of the solar nebula.',
 false, 1000,-145,5.2,95,0,2,1),
('Saturn',
'Saturn is the sixth planet from the Sun, with the largest planetary rings in the Solar System. It is the second-largest planet after Jupiter, and recently, with many other moons being discovered, it surpassed the number of Jupiter’s moons and is now considered the planet with the most numerous satellites.',
false,-185,-122,9.6,146,7,2,1),
('Uranus', 'Uranus is the seventh planet discovered in the Solar System that also led to the discovery of the last planet, Neptune they are both referred to as ice giants. Officially recognized in 1781 after many observations in the past, it is the third-largest planet of the Solar System.',
false,-197,-197,19.22,28,13,3,1),
('Neptune', 'Neptune is the fourth largest and the farthest planet of the Solar System with the most powerful wind speeds out of all the planets. It is the smallest of the gas giants and is the first planet to be discovered by mathematical predictions in 1846',
false, -201,-201,30.10,14,5,3,1);

('Ceres','Ceres is a dwarf planet, and the only who isn'’t located in the Kuiper Belt but rather in the inner solar system in the asteroid belt between the orbits of Mars and Jupiter. Discovered in 1801, it was considered a planet for a year, and then an asteroid, the first of its kind until 2006, when it was classified as of dwarf planet being the smallest of them.',
true, -105,-105,2.77,0,0,4,1),
('Pluto','Pluto is the largest known dwarf planet in the Solar System, discovered in 1930. It was thought to be the 9th planet of our system for 75 years until the discovery of Eris and other similar objects that led to its demotion from a planet to a dwarf planet in 2006.',
false,-226,-240,39.26,5,0,4,1),
('Haumea','Haumea is the fastest rotating dwarf planet with the most interesting/controversial shape. It is located beyond the orbit of Neptune. It was discovered in 2004 and is the fourth largest dwarf planet.',
false, -241,-241, 43.13, 2,0,4,1),
('Makemake', Makemake is the second furthest dwarf planet from the Sun located beyond Neptune'’s orbit. Discovered in 2005, it is the third-largest known dwarf planet.',
false, -239,-239, 45.8, 0,0,4,1),
('Eris','Eris is the most distant dwarf planet, located beyond the orbit of Neptune. It was discovered in 2005 and was originally classified as a planet. It is the second-largest dwarf planet discovered and it led to both it and Pluto'’s demotion from planets to dwarf planets.',
false, -243.2,-217.2, 68, 0,0,4,1);




