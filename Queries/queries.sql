deepika=> \connect deepika;                                                                                                                                                                                                             
Password:
psql (14.5 (Debian 14.5-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "deepika" as user "deepika".


deepika=> CREATE TABLE entries (guestName VARCHAR(255), content VARCHAR(255),
                        entryID SERIAL PRIMARY KEY);
INSERT INTO entries (guestName, content) values ('first guest', 'I got here!');
INSERT INTO entries (guestName, content) values ('second guest', 'Me too!');
CREATE TABLE
INSERT 0 1
INSERT 0 1


deepika=> SELECT * FROM entries;
  guestname   |   content   | entryid
--------------+-------------+---------
 first guest  | I got here! |       1
 second guest | Me too!     |       2
(2 rows)


deepika=> UPDATE entries SET guestName='manasa',content='hello' WHERE entryid=1;
UPDATE 1

deepika=> SELECT * FROM entries;
  guestname   | content | entryid
--------------+---------+---------
 second guest | Me too! |       2
 manasa       | hello   |       1
(2 rows)


deepika=> DELETE from entries WHERE entryid=2;
DELETE 1

deepika=> SELECT * FROM entries;                                                                                                                                                                                                        
 guestname | content | entryid
-----------+---------+---------
 manasa    | hello   |       1
(1 row)


