Create database Zomato ; 
use Zomato ;
Show tables ; 

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(255),
    reg_date DATE
);

CREATE TABLE Restaurants (
    Restaurant_id INT PRIMARY KEY,
    Restaurant_name VARCHAR(255),
    city VARCHAR(100),
    Opening_hours VARCHAR(50),
    Restaurant_reviews FLOAT
);

CREATE TABLE Riders (
    Rider_id INT PRIMARY KEY,
    Rider_name VARCHAR(255),
    Sign_up_Time DATE,
    Sign_off_Time DATE
);

CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    Customer_id INT,
    Restaurant_id INT,
    Order_item VARCHAR(255),
    Order_time DATETIME,
    Order_status ENUM('Delivered', 'Cancelled', 'Preparing'),
    Total_amount DECIMAL(10,2),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Restaurant_id) REFERENCES Restaurants(Restaurant_id)
);

CREATE TABLE Delivery (
    Delivery_id INT PRIMARY KEY,
    Order_id INT,
    Delivery_status ENUM('Completed', 'Pending', 'Failed'),
    Rider_id INT,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Rider_id) REFERENCES Riders(Rider_id)
);





