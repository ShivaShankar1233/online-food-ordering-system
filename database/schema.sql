-- Database schema for online food ordering system

CREATE TABLE Users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE MenuItems (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(id),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    restaurant_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(id)
);

CREATE TABLE OrderItems (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    menu_item_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (menu_item_id) REFERENCES MenuItems(id)
);