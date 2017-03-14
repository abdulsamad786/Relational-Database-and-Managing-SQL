/* Project 1: Description Of The Project
 There is a table with the following schema: CREATE TABLE `foo` for a HighSchool database where ID is a primary key
and and another is a randomly generated Passcode . All the Passcodes are UNIQUE KEY, DEFAULT ENGINE=InnoDB DEFAULT CHARSET=utf8 
The Passcode looks like following: ‘abcdefghjkmnpqrstuvwxyz23456789’. Example: Pabc234.
The sql file will result in filling 10 IDs and 10 Passcode.

*/


drop table if exists foo;
create table foo
(
id int unsigned not null auto_increment primary key,
val varchar(6) UNIQUE
)
engine=innodb;

drop procedure if exists load_foo_test_data;

delimiter #
create procedure load_foo_test_data()
begin

declare v_max int unsigned default 10;
declare v_counter int unsigned default 0;

  truncate table foo;
  start transaction;
  while v_counter < v_max do
    insert into foo (val) values 
      (( SELECT (CONCAT('P', 
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')),
	  
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')),
	  
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')),
	  
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')),
	  
	  
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')),
	  
	  ( SELECT ELT((1 + FLOOR(RAND() * 31) ), 'a','b','c','d','e','f','g',
	  'h','j','k','m','n','p','q','r','s','t','u','v','w','x','y','z',
	  '2','3','4','5','6','7','8','9','0')) 

	  ))));
    set v_counter=v_counter+1;
  end while;
  commit;
end #

delimiter ;

call load_foo_test_data();

select * from foo order by id;


/*
--------------------Result--------------------------
$ mysql -u root -p HighSchool < MySQLCODEGenerator.sql
Enter password:
id      val
1       Pv9dx7
2       Pgk6s5
3       Pdmmzv
4       Pnmwe5
5       Pwwggn
6       Pd3uuc
7       Preh5u
8       Pj3emh
9       Pk6vju
10      Pqcdmp                                                                           

*/
