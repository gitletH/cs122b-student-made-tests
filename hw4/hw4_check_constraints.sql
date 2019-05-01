# **** THESE SHOULD ALL FAIL, RUN TO CHECK CONSTRAINTS ****

# UNIQUE FOR table 'carts'
INSERT INTO carts (email, movieId, quantity)
VALUES
('sample@sample.com', 't012345678', 5),
('sample@sample.com', 't012345678', 5);

# FOREIGN KEY CONSTRAINT ON ccId references creditcards.id
INSERT INTO customers (email, firstName, lastName, ccId, address)
VALUES
    ('another_email@uci.edu', 'Another', 'Guy', 'not_a_cc_in_table', 'throw_away_address');

# FOREIGN KEY CONSTRAINT ON email references customers.email
INSERT INTO sales (email, movieId, quantity, saleDate)
VALUES
    ('not_an_email_in_customers@uci.edu', 't234121531', 2, '2019-04-10');