PRAGMA foreign_keys = ON;

BEGIN;

CREATE TABLE IF NOT EXISTS categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE IF NOT EXISTS products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  category_id INTEGER REFERENCES categories(id),
  quantity_per_unit TEXT,
  unit_price NUMERIC DEFAULT 0,
  units_in_stock INTEGER DEFAULT 0,
  units_on_order INTEGER DEFAULT 0,
  CHECK (unit_price>=(0)),
  CHECK (units_in_stock>=(0)),
  CHECK (units_on_order>=(0))
);


CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content TEXT,
    created_at DATE DEFAULT CURRENT_DATE
);

SELECT * FROM tasks;


COMMIT;