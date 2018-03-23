# PG Locks

Exploring Postgres Locks

## Using

To set everything up
```
./setup db
./setup migrate
./setup populate
```

To open an sql session
```
./setup session
```

To cleanup
```
./setup cleanup
```

## Simple Row Locks

```sql
-- transaction 1
BEGIN;
SELECT * FROM simple_data WHERE some_number < 7;
```

```sql
-- transaction 2
BEGIN;
SELECT * FROM simple_data WHERE some_number < 7;
-- This will block
```

```sql
-- transaction 1
UPDATE simple_data SET some_number = 9 WHERE id = 'ID3';
COMMIT
```

In transaction 2 you should see rows with ids *ID1* and *ID4* now selected;

```sql
-- transaction 2
COMMIT
```

