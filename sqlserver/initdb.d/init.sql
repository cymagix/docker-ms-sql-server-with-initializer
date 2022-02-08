CREATE DATABASE app_data  
GO  
use app_data;

CREATE TABLE app_user (
  id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  user_name varchar(70)  NOT NULL,
  active bit NOT NULL DEFAULT 'true',
);
INSERT INTO app_user VALUES ('John Doe', 'true'),('John Smith', 'false');

