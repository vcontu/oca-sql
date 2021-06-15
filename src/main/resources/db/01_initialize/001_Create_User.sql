-- Connect to container database CDB: ORCL12
-- URL: jdbc:oracle:thin:@//localhost:1521/ORCL12
-- login: sys as sysdba
-- password: use the password as you configured it in docker/docker-compose.yml as described in README.MD

-- Create a user inside pluggable database PDB112
ALTER SESSION SET CONTAINER=PDB112;

CREATE USER ocasql IDENTIFIED BY ""; -- <<< Set the password for user ocasql

GRANT CREATE SESSION TO ocasql;
GRANT CREATE TABLE TO ocasql;
GRANT CREATE VIEW TO ocasql;
GRANT CREATE SEQUENCE TO ocasql;

GRANT UNLIMITED TABLESPACE to ocasql; -- We need to allocated some space to hold our data
ALTER user ocasql QUOTA 256M on users ; -- Or we can make it a little bit more limited


-- Now you are ready to go!
-- Connect to ocasql which belongs to pluggable database PDB112
-- URL: jdbc:oracle:thin:@//localhost:1521/PDB112
-- login: ocasql
-- password: as you used in line 9.

