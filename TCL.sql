create database TCL;
use TCL;

CREATE TABLE orders (
	order_id int PRIMARY KEY,
    customer_name VARCHAR(100),
    status VARCHAR(50)
);

desc orders;

set autocommit=0;

-- start transaction;
-- OR
BEGIN;

INSERT INTO orders VALUES(101,'Geet','pending');
INSERT INTO orders VALUES(102,'bob','pending');
update orders set customer_name='Raj' where order_id=102; 
truncate table orders;
select * from orders;
rollback;
commit;

INSERT INTO orders VALUES(103,'alice','pending');
commit;
update orders set customer_name='Raji' where order_id=103;
rollback;

INSERT INTO orders VALUES(104,'yash','pending');
savepoint sp1;


update orders set status = 'shipped' where order_id=103;
savepoint sp2;
rollback to savepoint sp3;

delete from orders where order_id=102;
savepoint sp3;
rollback to savepoint sp1;

rollback;