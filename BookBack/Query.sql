CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY (id) 
);

INSERT INTO category (name, description,image_url,is_active) VALUES ('Fiction', 'This is description for Fictional category!', 'CAT_1.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Kids', 'This is description for Kids category!', 'CAT_2.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Educational', 'This is description for Educational category!', 'CAT_3.png', true);

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);


CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	
);

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Akshaya', 'K', 'ADMIN', true, '&*@#$', 'ak@gmail.com', '1111111111');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Varun', 'R', 'SUPPLIER', true, '&letmeknow&', 'vr@gmail.com', '8888888888');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Abishek', 'Raj', 'SUPPLIER', true, '!!heyhi!!123', 'ar@gmail.com', '7777777777');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Shiv', 'Ranjani', 'USER', true, '9677holaamigo', 'sr@gmail.com', '1234567890');

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('oneindiangirl', 'One Indian Girl', 'Chetan Bhagat', 'One Indian Girl is the seventh fictional novel and the ninth overall book by Chetan Bhagat', 250, 5, true, 1, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('peanuts', 'Peanuts', 'Charles M.Schulz', 'The most beloved comic strip in America',150, 25, true, 2, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('physics', 'Physics for JEE', 'CENGAGE', 'It is a huge question bank pattern on the latest trends in the JEE',600, 10, true, 3, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('songofice', 'A Song of Ice and Fire','George R.R. Martin', 'A series of epic fantasy novels by the American novelist and screenwriter George R.R.Martin', 540, 3, true, 1, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('deathly', 'Harry Potter and The Deathly Hallows','J.K.Rowling', 'A fantasy novel written by British author J.K.Rowling', 348, 5, true, 2, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('wrenmartin', 'Wrenn & Martin','P.C.Wren','It refers to a single book High School English Grammar by P.C.Wren and H.Martin', 500, 5, true, 3, 3, 0, 0 );
