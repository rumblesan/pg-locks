INSERT INTO tickets (id, information) VALUES
  ('ID1', 'some text'),
  ('ID2', 'more text'),
  ('ID3', 'less');

INSERT INTO ticket_events (id, event_type, ticket_id) VALUES
  ('TK01', 'outbound_email', 'ID1'),
  ('TK02', 'inbound_email',  'ID2'),
  ('TK03', 'outbound_email', 'ID3'),
  ('TK04', 'outbound_phone', 'ID1'),
  ('TK05', 'inbound_email',  'ID2'),
  ('TK06', 'inbound_phone',  'ID3'),
  ('TK07', 'outbound_email', 'ID1'),
  ('TK08', 'inbound_email',  'ID2'),
  ('TK09', 'outbound_phone', 'ID3'),
  ('TK10', 'inbound_phone',  'ID1'),
  ('TK11', 'outbound_email', 'ID2'),
  ('TK12', 'inbound_email',  'ID3'),
  ('TK13', 'outbound_phone', 'ID1')


