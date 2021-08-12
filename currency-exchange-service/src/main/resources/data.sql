DROP TABLE IF EXISTS exchange_value;
CREATE TABLE exchange_value (
                              id INT NOT NULL,
                              currency_from VARCHAR(250) NOT NULL,
                              currency_to VARCHAR(250) NOT NULL,
                              conversion_multiple INT DEFAULT 0,
                              port INT DEFAULT 0
);
INSERT INTO exchange_value(id,currency_from,currency_to,conversion_multiple,port)
VALUES(10001,'USD', 'INR' ,65,8000);
INSERT INTO exchange_value(id,currency_from,currency_to,conversion_multiple,port)
VALUES(10002,'EUR', 'INR' ,75,8000);
INSERT INTO exchange_value(id,currency_from,currency_to,conversion_multiple,port)
VALUES(10003,'AUD', 'INR' ,25,8000);