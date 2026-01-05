CREATE TABLE states (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  abbreviation VARCHAR(2)
);

CREATE TABLE minimum_wage (
  id SERIAL PRIMARY KEY,
  state_id INT REFERENCES states(id),
  year INT,
  wage NUMERIC
);

CREATE TABLE employment_stats (
  id SERIAL PRIMARY KEY,
  state_id INT REFERENCES states(id),
  year INT,
  employment_rate NUMERIC,
  median_income NUMERIC
);
