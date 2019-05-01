# CREATED BY ALEX CHENG
# NOT RESPONSIBLE FOR YOUR GRADE IF THIS DOESN'T WORK RIGHT
# LMK OF ANY PROBLEMS amcheng@uci.edu

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE carts;
TRUNCATE creditcards;
TRUNCATE customers;
TRUNCATE sales;
SET FOREIGN_KEY_CHECKS = 1;


# IF THIS FAILS, YOU MIGHT HAVE FORGOT AUTO-INCREMENT CONSTRAINT
INSERT INTO
    carts (email, movieId, quantity)
VALUES
    ('sample@sample.com', 't012345678', 5),
    ('buyer@buyingstuff.com', 't012345678', 3),
    ('dark@knight.com', 't012345678', 8),
    ('dark@knight.com', 't876543210', 1);


INSERT INTO creditcards (id, firstName, lastName, expiration)
VALUES
    ('1234827364859205893', 'Alex', 'Cheng', '2022-04-10'),
    ('3627483910376583728', 'Taylor', 'Futral', '2021-01-24');


INSERT INTO customers (email, firstName, lastName, ccId, address)
VALUES
    ('amcheng@uci.edu', 'Alex', 'Cheng', '1234827364859205893', '122b CompSci St. Irvine, CA 90000'),
    ('taylor@blahblah.com', 'Taylor', 'Futral', '3627483910376583728', '1234 Anteater Dr. Santa Ana, CA 90001');


# IF THIS FAILS, YOU MIGHT HAVE FORGOT AUTO-INCREMENT CONSTRAINT
INSERT INTO sales (email, movieId, quantity, saleDate)
VALUES
    ('amcheng@uci.edu', 't234121531', 2, '2019-04-10'),
    ('taylor@blahblah.com', 't23148931', 7, '2019-04-12');

# SELECT * FROM carts;
# SELECT * FROM creditcards;
# SELECT * FROM customers;
# SELECT * FROM sales;