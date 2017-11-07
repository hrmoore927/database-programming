DROP DATABASE IF EXISTS exam1_heathermoore;
CREATE DATABASE exam1_heathermoore;
USE exam1_heathermoore;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email_address   VARCHAR(100)    NOT NULL    UNIQUE,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL
) ENGINE = InnoDB CHARSET = utf8;

CREATE TABLE products (
    product_id  INT PRIMARY KEY AUTO_INCREMENT,
    product_name   VARCHAR(45)  NOT NULL
) ENGINE = InnoDB CHARSET = utf8;

CREATE TABLE downloads (
    download_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    download_date   DATETIME    NOT NULL,
    filename   VARCHAR(50) NOT NULL,
    product_id  INT NOT NULL,
    CONSTRAINT downloads_fk_users
        FOREIGN KEY (user_id) 
        REFERENCES users (user_id),
    CONSTRAINT downloads_fk_products
        FOREIGN KEY (product_id) 
        REFERENCES products (product_id)
) ENGINE = InnoDB CHARSET = utf8;

CREATE INDEX downloads_ix_filename
    ON downloads (filename);
    
CREATE INDEX products_ix_product_name
    ON products (product_name);