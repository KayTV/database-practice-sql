CREATE TABLE apartments (
  id serial primary key,
  building_name varchar(80),
  location text
);

CREATE TABLE units (
  id serial primary key,
  unit_num integer,
  bedroom integer,
  apartment_building integer REFERENCES apartments(id)
);

CREATE TABLE tenants (
  id serial primary key,
  name varchar(80),
  unit_live integer REFERENCES units(id)
);
