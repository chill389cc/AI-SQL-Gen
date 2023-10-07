create table galaxy(
	galaxy_id INT PRIMARY KEY,
  galaxy_name TEXT
);

create table star_type(
	star_type_id INT PRIMARY KEY,
  star_type_name TEXT
);

create table star(
	star_id INT PRIMARY KEY,
	star_name TEXT NOT NULL,
  star_mass REAL NOT NULL,
  star_age_years INT NOT NULL,
  galaxy_id INT,
  star_type_id INT NOT NULL,
  foreign key(galaxy_id) references galaxy(galaxy_id),
  foreign key(star_type_id) references star_type(star_type_id)
);

create table planet(
	planet_id INT PRIMARY KEY,
	planet_name TEXT NOT NULL,
  planet_mass REAL NOT NULL,
  planet_number_of_rings INT,
  star_id INT,
  foreign key(star_id) references star(star_id)
);

create table moon(
	moon_id INT PRIMARY KEY,
  moon_name TEXT NOT NULL,
  moon_mass REAL NOT NULL,
  planet_id INT NOT NULL,
  foreign key(planet_id) references planet(planet_id)
);
