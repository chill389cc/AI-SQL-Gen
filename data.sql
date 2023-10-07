-- Insert test data into the 'galaxy' table
INSERT INTO galaxy (galaxy_id, galaxy_name)
VALUES
  (1, 'Milky Way'),
  (2, 'Andromeda'),
  (3, 'Triangulum'),
  (4, 'Sombrero'),
  (5, 'Pinwheel'),
  (6, 'Antennae'),
  (7, 'Whirlpool'),
  (8, 'Centaurus A'),
  (9, 'Bode’s Galaxy'),
  (10, 'Cigar Galaxy');

-- Insert test data into the 'star_type' table
INSERT INTO star_type (star_type_id, star_type_name)
VALUES
  (1, 'Main Sequence'),
  (2, 'Red Giant'),
  (3, 'White Dwarf'),
  (4, 'Neutron Star'),
  (5, 'Black Hole'),
  (6, 'Protostar'),
  (7, 'Supergiant'),
  (8, 'Binary Star'),
  (9, 'Blue Giant'),
  (10, 'Subdwarf');

-- Insert test data into the 'star' table
INSERT INTO star (star_id, star_name, star_mass, star_age_years, galaxy_id, star_type_id)
VALUES
  (1, 'Sun', 1.989e30, 4600000000, 1, 1),
  (2, 'Proxima Centauri', 2.447e29, 5610, 1, 6),
  (3, 'Alpha Centauri A', 2.188e30, 6000000000, 1, 1),
  (4, 'Betelgeuse', 1.4e31, 8000000, 2, 2),
  (5, 'Sirius', 2.02e30, 200000000, 1, 1),
  (6, 'Polaris', 6.77e29, 7000000000, 1, 1),
  (7, 'VY Canis Majoris', 2.17e31, 1000000, 3, 7),
  (8, 'Rigel', 3.18e31, 9000000, 1, 9),
  (9, 'Arcturus', 2.26e30, 6800000000, 1, 1),
  (10, 'Deneb', 1.5e31, 8000000, 4, 7);

-- Insert test data into the 'planet' table
INSERT INTO planet (planet_id, planet_name, planet_mass, planet_number_of_rings, star_id)
VALUES
  (1, 'Earth', 5.972e24, NULL, 1),
  (2, 'Mars', 6.39e23, NULL, 1),
  (3, 'Jupiter', 1.898e27, 4, 1),
  (4, 'Saturn', 5.683e26, 7, 1),
  (5, 'Venus', 4.867e24, NULL, 1),
  (6, 'Neptune', 1.024e26, 5, 1),
  (7, 'Uranus', 8.681e25, 13, 1),
  (8, 'Mercury', 3.285e23, NULL, 1),
  (9, 'Pluto', 1.309e22, NULL, 1),
  (10, 'Mars II', 6.39e23, NULL, 2),
  (11, 'Pandora', 3.2e24, 1, 7),
  (12, 'Avalon', 6.1e25, 2, 5),
  (13, 'Triton', 2.14e22, NULL, 8),
  (14, 'Olympus', 4.9e24, 0, 2),
  (15, 'Elysium', 8.3e24, 0, 6),
  (16, 'Aeolus', 1.24e25, 3, 9),
  (17, 'Pallas', 3.14e23, NULL, 10),
  (18, 'Prometheus', 1.1e24, 1, 4),
  (19, 'Cassiopeia', 7.6e24, 2, 3),
  (20, 'Astraeus', 9.8e24, NULL, 7);

-- Insert test data into the 'moon' table
INSERT INTO moon (moon_id, moon_name, moon_mass, planet_id)
VALUES
  (1, 'Luna', 7.342e22, 1),
  (2, 'Phobos', 1.0659e16, 2),
  (3, 'Deimos', 1.4762e15, 2),
  (4, 'Ganymede', 1.4819e23, 3),
  (5, 'Io', 8.9319e22, 3),
  (6, 'Europa', 4.7998e22, 3),
  (7, 'Titan', 1.3455e23, 4),
  (8, 'Enceladus', 1.08022e20, 4),
  (9, 'Triton', 2.1392e22, 13),
  (10, 'Charon', 1.586e21, 9),
  (11, 'Miranda', 6.59e19, 5),
  (12, 'Callisto', 1.0759e23, 3),
  (13, 'Rhea', 2.306e21, 4),
  (14, 'Tethys', 6.174e20, 4),
  (15, 'Oberon', 3.014e21, 7);
