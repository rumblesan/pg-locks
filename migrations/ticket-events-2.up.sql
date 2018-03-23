
CREATE TABLE IF NOT EXISTS tickets (
  id text PRIMARY KEY,
  information text NOT NULL,
  created_at timestamp DEFAULT now()
);


CREATE TABLE IF NOT EXISTS ticket_events (
  id text PRIMARY KEY,
  event_type text NOT NULL,
  ticket_id text REFERENCES tickets (id) ON DELETE CASCADE,
  created_at timestamp DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_ticket_events_ticket_id ON ticket_events USING btree (ticket_id);
