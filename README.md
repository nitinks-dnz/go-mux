# Run the postgres server on local
pg_ctl -D /usr/local/var/postgres start

# Creating the database structure

    CREATE TABLE products
    (
        id SERIAL,
        name TEXT NOT NULL,
        price NUMERIC(10,2) NOT NULL DEFAULT 0.00,
        CONSTRAINT products_pkey PRIMARY KEY (id)
    )

# Get the required files

    go get -u github.com/gorilla/mux 
    go get -u github.com/lib/pq

# Runing the application

source .env

go build -o go-mux.bin

./go-mux.bin

# Running the test

go test

Output : 

PASS
ok  	github.com/dunzoit/go-mux	0.038s

# DIY Exercise

    * Add a store table with store containing products
        store_id , product_id , is_available

    Add the following apis

    GET /store/:id/products

     - Given store id, get the list of products

    POST /store/:id

     - Given list of products add in the store

    Add test cases for the above apis.
