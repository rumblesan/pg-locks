CREATE TABLE IF NOT EXISTS simple_data (
  id text PRIMARY KEY,
  some_text text NOT NULL,
  some_number integer NOT NULL,
  created_at timestamp DEFAULT now(),
  updated_at timestamp
);
