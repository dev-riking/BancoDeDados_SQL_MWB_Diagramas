use empresa1;

select user from mysql.user;
create user 'erik'@'localhost' identified by 'erik';
grant all privileges on empresa1.* to 'erik'@'localhost';
grant select, update on empresa1.departamentos to 'erik'@'localhost';
flush privileges;
revoke all privileges on empresa1.* from 'erik' @ 'localhost';
revoke select on empresa1.departamentos from 'erik'@'localhost';
show grants for 'erik'@'localhost';
drop user 'senac'@'localhost';