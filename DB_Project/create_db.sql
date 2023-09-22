-- Create the database if it doesn't exist
CREATE DATABASE company_analytics
WITH OWNER = postgres
TEMPLATE = template0  -- Use template0 as a clean template
ENCODING = 'UTF8'
LC_COLLATE = 'Russian_Russia.utf8'
LC_CTYPE = 'Russian_Russia.utf8';