deepika=> \connect deepika;                                                                                                                                                                                                             
Password:
psql (14.5 (Debian 14.5-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "deepika" as user "deepika".


deepika=>create table Employee(
        id serial primary key,
        name varchar(30) not null,
    age int not null
 );
 
INSERT INTO Employee (name, age) values ('anu', 27);
INSERT 0 1

deepika=> INSERT INTO Employee (name, age) values ('raj', 25);
INSERT 0 1

deepika=>  select * from Employee;
 id | name | age
----+------+-----
  1 | anu  |  27
  2 | raj  |  25
(2 rows)



deepika=> UPDATE Employee SET name='anuradha',age=23 WHERE id=1;
UPDATE 1

deepika=>  select * from Employee;
 id |   name   | age
----+----------+-----
  2 | raj      |  25
  1 | anuradha |  23
(2 rows)


deepika=> DELETE from Employee WHERE id=2;
DELETE 1
deepika=>  select * from Employee;
 id |   name   | age
----+----------+-----
  1 | anuradha |  23
(1 row)

