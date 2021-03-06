/* DB Setup */
DROP DATABASE IF EXISTS otrmessengertest;
CREATE DATABASE IF NOT EXISTS otrmessengertest;
USE otrmessengertest;

source ../scripts/db_schema.sql

/* Users */
INSERT INTO users VALUES ("alice123", SHA2("13alice123alicepassword8", 256), "127.0.0.1");
INSERT INTO users VALUES ("bob", SHA2("8bobPassword3", 256), "123.456.789");
INSERT INTO users VALUES ("karateAMD", SHA2("6karateAMDpwd1239", 256), "192.168.10.123");
INSERT INTO users VALUES ("sameetandpotatoes", SHA2("8sameetandpotatoesiLuvMacs17", 256), "10.192.345.987");
INSERT INTO users VALUES ("archilmedes", SHA2("8archilmedeslinuxFTW11", 256), "987.654.321");
INSERT INTO users VALUES ("andrew", SHA2("11anderewanotherPass7", 256), "888.888.888");

/* Sessions */
INSERT INTO sessions VALUES (12, "alice123", "123.456.789", "otr", "str1", "2018-04-20 14:18:05.283410");
INSERT INTO sessions VALUES (14, "alice123", "10.192.345.987", "plain", "protocol2", "2018-04-19 14:18:05.283410");
INSERT INTO sessions VALUES (34, "karateAMD", "10.192.345.987", "plain", "line3", "2018-04-20 10:18:05.283410");
INSERT INTO sessions VALUES (35, "karateAMD", "987.654.321", "otr", "serializedObject4", "2018-04-19 06:49:05.283410");
INSERT INTO sessions VALUES (64, "andrew", "10.192.345.987", "otr", "number5", "2018-04-20 21:04:16.283410");
INSERT INTO sessions VALUES (62, "andrew", "123.456.789", "otr", "part6", "2018-04-20 14:18:05.123456");
INSERT INTO sessions VALUES (32, "karateAMD", "123.456.789", "otr", "lastLine7", "2018-04-18 11:45:59.999999");

/* Messages */
INSERT INTO messages VALUES (12, "Hello World", "2017-02-01 08:20:19.123456", 1);
INSERT INTO messages VALUES (14, "Hey Sameet, its Alice <3", "2018-02-14 11:11:11.111111", 0);
INSERT INTO messages VALUES (34, "Hey Andrew, I need help with 511, when are you free?", "2018-04-10 12:30:08.222222", 1);
INSERT INTO messages VALUES (52, "lul", "2018-03-28 18:04:10.333333", 0);
INSERT INTO messages VALUES (34, "I almost made my Mac a brick", "2018-04-08 17:01:40.444444", 1);
INSERT INTO messages VALUES (42, "Why did the chicken cross the road?", "2018-04-12 07:56:00.555555", 1);
INSERT INTO messages VALUES (42, "To get to the other side?", "2018-04-12 07:59:13.666666", 0);
INSERT INTO messages VALUES (34, "When are we playing Fortnite?", "2018-04-08 17:59:02.777777", 0);

/* Friends */
INSERT INTO friends VALUES ("karateAMD", "archil", "ab:cd:ef:ff", "987.654.321", "archilmedes");
INSERT INTO friends VALUES ("karateAMD", "sameet", "01:23:45:67", "10.192.345.987", "sameetandpotatoes");
INSERT INTO friends VALUES ("karateAMD", "andrew", "11:11:11:11", "987.654.321", "andrew");
INSERT INTO friends VALUES ("archilmedes", "sameet", "01:23:45:67", "10.192.345.987", "sameetandpotatoes");
INSERT INTO friends VALUES ("alice123", "bobby", "ff:ff:ff:ff", "123.456.789", "bob");