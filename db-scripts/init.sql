CREATE TABLE IF NOT EXISTS products (
        id SERIAL,
        name TEXT NOT NULL,
        price NUMERIC(10,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT products_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS store (
                                     id INT,
                                     product_id INT NOT NULL,
                                     is_available BOOLEAN DEFAULT TRUE,
                                     CONSTRAINT products_fkey FOREIGN KEY (product_id) REFERENCES products(id)
    );

CREATE UNIQUE INDEX unique_store_product
    ON store (id, product_id);