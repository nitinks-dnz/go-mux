#DIY 1 for Allocation new Joinees
    To-Do -

    * Add a store table with store containing products
        store_id , product_id , is_available

    Add the following apis

    GET /store/:id/products

     - Given store id, get the list of products

    POST /store/:id

     - Given list of products add in the store

    Add test cases for the above apis.
### Get the required files
```shell
go get -u github.com/gorilla/mux 
go get -u github.com/lib/pq
```

### Start the local dev setup
Pre-requisites to this step is to have docker and docker-compose installed locally. By running the below command Postgres database will be setup locally on docker and the tables will be created along with constraints, the initial DB scripts is places in [init.sql](https://github.com/nitinks-dnz/go-mux/tree/main/db-scripts/init.sql).
```shell
source .env
docker-compose start
```

### Runing the application
```shell
source .env
go build -o go-mux.bin
./go-mux.bin
```

### Running the test
```shell
go test run ''
```
    Output :
    PASS
    ok  	github.com/nitinks-dnz/go-mux	0.476s

## New APIs added

1. POST /store/{id}
    -  Input:
    ```json
   [
      {
          "product_id": 1,
          "is_available": true
      },
      {
          "product_id": 2,
          "is_available": false
      }
   ]
    ```
    -  Expected output:
    ```json
   [
      {
          "id": 1,
          "product_id": 1,
          "is_available": true
      },
      {
          "id": 1,
          "product_id": 2,
          "is_available": false
      }
   ]
    ```
2. GET /store/{id}/products
    - Example Output:
    ```json
   [
      {
          "name": "Product 1",
          "product_id": 1,
          "price": 10,
          "is_available": true
      },
      {
          "name": "Product 2",
          "product_id": 2,
          "price": 20,
          "is_available": false
      }
   ]
    ```