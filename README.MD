# OCA Database SQL Certification 1Z0-071 Exam
## Initial Setup
1. Install Docker Desktop   
2. Open **docker** directory. Edit in **docker-compose.yml** the field **ORACLE_PWD** with the desired password for 
   Oracle sys user. Remember this password when connecting to Oracle.   
3. Run: `docker-compose up -d`

Please take into consideration the big oracle image file and the long duration to initial startup. Feel free to 
adjust the docker-compose.yml anyway you prefer. 

   
## SQL Practice
Please proceed with **src/main/resources/db**. 
- First start with creating a user as described in **src/main/resources/db/01_initialize/001_Create_User.sql**
- Continue with other SQL scripts.


## Removing Oracle Docker Container
1. Open **docker** directory and run: `docker-compose down --rmi local -v`