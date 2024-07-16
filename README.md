# MILKYDAY DBMS Project

## Languages and Tools
- **MySQL** (MySQL Workbench)
- **Python** (VSCode)
- **MySQL and Python Connector**

## Overview of the Code
The project comprises three main files:
1. **Interface.py**: Contains the primary function and the whole interface for the command-line interface (CLI). It is based on a connection of menus where users can opt for any of the given options by inputting the corresponding digit from the menu.
2. **Functions.py**: Includes all the functions used by the interface. Each function has a MySQL connection allowing it to perform operations on the database. These functions are categorized into additions, deletions, table access, updates, and special requirements.
3. **Animations.py**: Basic Python code for dot animation to improve the interface and ensure the output terminal is not cramped.

## Detailed Explanation

### Main Menu
The user initiates a connection and is presented with the first menu:

--------------Welcome to MILKYDAY--------------

Enter as Admin
Enter as Retailer
Register Admin
Exit


#### Admin Login
By choosing **1**, the user is treated as an admin and is logged into the system using the `validateAdminLogin` function, which requires a username and password. This function connects to a MySQL database and runs a SELECT query to retrieve the adminID associated with the input username and password. If no results are returned, it prints an "Invalid Username or Password" message. Otherwise, it prints a welcome message with the logged-in user's name and passes the adminID to the `adminPage1` function.

#### Admin Page
The admin page provides more options:

------------- Welcome <Admin name> -------------

Manage Factories
Manage Collection Centre
Manage Retailers
Manage Employees
Go Back


Each option leads to another menu for functions from the functions file to manipulate data in the MySQL database.

##### Manage Factories

Get Number of Centres delivering to this factory
Get the most working Employees in the factory
Get the total sale made by factory
Give Yearly Bonus to Employees
Manage Products
Manage Production
Go Back


Functions include retrieving information about the number of centers delivering to a factory, the most working employee in a factory, total sales made by a factory, giving yearly bonuses to employees, and managing products and production.

##### Manage Collection Centers
Add a new center under you
Delete center
List by profit Collection Center
Search by factory
Search by Milk Quantity
Search by Amount paid
Show all centers
Go Back


This provides functions to manipulate the `retailers` table in MySQL. Only retailers with the same adminID as the user can be edited.

### Retailer Login
By choosing **2**, the user is treated as a retailer and must validate themselves using the `validateRetailerLogin` function, which requires a username and password. Similar to `validateAdminLogin`, this function connects to the MySQL database and runs a SELECT query to retrieve the RetailerID associated with the input username. If no results are returned or the password is incorrect, it prints an "Invalid Username or Password" message. Otherwise, it prints a message indicating that the user has been found and passes the RetailerID to the `retailerPage1` function.

#### Retailer Page
The retailer page provides the following options:
Manage Products
Manage Customers
Make Bill
Go Back

The `retailerPage1` function displays a menu of options for managing products and customers and making bills. It uses an infinite loop and an input statement to continuously prompt the user to select an option from the menu.

##### Manage Products
Add Products
Delete Products
Show Products
Go Back
shell
Copy code

##### Manage Customers
Add Customer
Delete Customer Details
Update Customer Details
Show Customer list
Go Back
vbnet
Copy code

#### Make Bill
The `make_bill` function from the functions module generates a bill for the current customer. The function continues to display the main menu until the user selects the "Go Back" option.

### Register Admin
By choosing **3**, main admins (programmers) can register a new admin. To register a new admin, a master password is required. This master password is hard-coded to prevent unauthorized additions of new admins.

## Getting Started
1. Clone the repository.
2. Set up MySQL and configure the database.
3. Install the required Python packages.
4. Run the `Interface.py` to start the application.

## Contributing
Feel free to fork the repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.
