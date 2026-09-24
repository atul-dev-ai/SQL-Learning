# 📚 Data Types in SQL

When creating a table in a database, you must define the type of data that each column will hold. Here are the most common standard SQL data types.

## Numeric Types
- `INT` or `INTEGER`: Standard integer number.
- `SMALLINT`: Small integer.
- `BIGINT`: Large integer.
- `DECIMAL(p, s)` or `NUMERIC`: Exact fractional numbers (e.g., for currency). `p` is total digits, `s` is digits after the decimal.
- `FLOAT` or `REAL`: Approximate fractional numbers.

## String / Text Types
- `CHAR(n)`: Fixed-length string. If you provide less than `n` characters, it pads with spaces.
- `VARCHAR(n)`: Variable-length string. Very common for text.
- `TEXT`: Unlimited length text (PostgreSQL/MySQL).

## Date / Time Types
- `DATE`: Stores date (Year, Month, Day) `YYYY-MM-DD`.
- `TIME`: Stores time (Hour, Minute, Second).
- `DATETIME` / `TIMESTAMP`: Stores both date and time.
- `INTERVAL`: Stores a time span.

## Boolean Type
- `BOOLEAN`: Stores `TRUE` or `FALSE`.

## Advanced Types (PostgreSQL)
- `JSON` / `JSONB`: For storing unstructured JSON data.
- `UUID`: Universally Unique Identifier.
- `ARRAY`: A list of items of a specific type.
