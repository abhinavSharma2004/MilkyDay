import mysql.connector
import functions as fun
from animation import Animations as anime

def validateAdminLogin(username, password) :
    conec = mysql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    inp = [username, password]
    query = "select adminID from admin where admin_name = %s and Admin_password = %s "
    cur.execute(query,inp)
    show = cur.fetchall()
    if (len(show) == 0) :
        print("Invalid Username or Password")
    else:
        print("\n------------- Welcome "+username+" -------------")
        adminID = int(show[0][0])
        adminPage1(adminID)

def validateRetailerLogin(username, password) :
    conec = mysql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    inp = [username]
    query = "select RetailerID from retailer where Retailer_name = %s"
    cur.execute(query,inp)
    show = cur.fetchall()
    if (len(show) == 0 or show[0][0] != int(password)):
        print("Invalid Username or Password")
    else:
        print("\nUser found\n")
        retailerPage1(int(show[0][0]))

def retailerPage1(retailerID):
    print("1. Manage Products")
    print("2. Manage Customers")
    print("3. Make Bill")
    print("4. Go Back")
    while (True):
        x = int(input("\nEnter Choice: "))

        if (x == 1):
            print("\n1. Add Products")
            print("2. Delete Products")
            print("3. Show Products")
            print("4. Go Back")
            x1 = input("\n Enter Choice: ")
            if (x1==1):
                fun.add_ret_product(retailerID)
            elif (x1 == 2):
                fun.delete_ret_product(retailerID)
            elif (x1 == 3):
                fun.show_ret_products(retailerID)
            elif (x1 == 4):
                break
            else:
                print("** Incorrect Option **")

        elif(x==2):
            print("\n1. Add Customer")
            print("2. Delete Customer Details")
            print("3. Update Customer Details")
            print("4. Show Customer list")
            print("5. Go Back")
            x3 = input("\n Enter Choice: ")
            if (x3==1):
                fun.add_customer(retailerID)
            elif (x3 == 2):
                fun.delete_customer(retailerID)
            elif (x3 == 3):
                while (True):
                    input_ID = int(input("\nEnter Customer ID to update: "))
                    print("\n1. Update Name")
                    print("2. Update Phone no.")
                    print("3. Go Back")
                    x4 = input("\n Enter Choice: ")
                    if (x4 == 2):
                        break
                    else:
                        fun.update_customer(x4,input_ID)
            elif (x3 == 4):
                fun.show_customer()
            elif (x3 == 5):
                break
            else:
                print("** Incorrect Option **")

        elif (x == 3):   
            fun.make_bill() # transactions are used in this function
        elif (x==4):
            print("logging out")
            break
        else:
            print("\nInvalid option")
            continue

def manageFactories(adminID) :
    while (True):
        print("1. Manage Collection Centres delivering to this factory")
        print("2. Manage Employees")
        print("3. Manage Production")
        print("4. Go Back")
        x = int(input("\n Enter Choice: "))
        if (x != 4):
            factid = int(input("Enter factoryID "))
        if (x==1):
            fun.getCentresForFactory(factid)
        elif(x==2):
            fun.getEmployeesForFactory(factid)
        elif(x==3):
            fun.getStockProduct(factid)
        elif(x==4):
            return
        else:
            print("\nInvalid option")
            continue


# def manage_cc(adminId):
#     while(True):
#         print("\n  Managing Collection Centers\n")
#         print("1. Add new center under you")
#         print("2. Delete center")
#         print("3. list by profit Collection Center")
#         print("4. Search by factory")
#         print("5. Serch by Milk Quantity")
#         print("6. Serch by Amount paid")
#         print("7. Show all centers")
#         print("8. Go Back")
#         x1 = input("\n Enter Choice: ")
#         if (x1==1):
#             fun.add_cc(adminId)
#         elif (x1 == 2):
#             fun.delete_cc(adminId)
#         elif (x1 == 3):
#             fun.best_cc(adminId)
#         elif (x1 == 4):
#             fun.profit_cc(adminId)
#         elif (x1 == 5):
#             fun.search_quan(adminId)
#         elif (x1 == 6):
#             fun.search_amt(adminId)
#         elif (x1 == 7):
#             fun.show_cc(adminId)
#         elif (x1 == 8):
#             adminPage1(adminId)
#         else:
#             print("Invalid option")

# def manage_retailers(adminID):
#     while(True):
#         print("\n  Managing Retailers\n")
#         print("1. Add new retailers under you")
#         print("2. Delete retailer data")
#         print("3. Show all retailers under me")
#         print("4. Go Back")
#         x1 = input("\n Enter Choice: ")
#         if (x1==1):
#             fun.add_ret()
#         elif (x1 == 2):
#             fun.delete_ret()
#         elif (x1 == 3):
#             fun.show_ret()
#         elif (x1 == 4):
#             adminPage1(adminID)
#         else:
#             print("Invalid option")

# def manage_employees(adminID):
#     while(True):
#         print("\n  Managing Retailers\n")
#         print("1. Add new employee under you")
#         print("2. Fire an employee")
#         print("3. Reassign employee")
#         print("4. Update Salary")
#         print("5. Show all employees under me")
#         print("6. Go Back")
#         x1 = input("\n Enter Choice: ")
#         if (x1==1):
#             fun.add_emp()
#         elif (x1 == 2):
#             fun.delete_emp()
#         elif (x1 == 3):
#             fun.reassign()
#         elif (x1 == 4):
#              fun.salary()
#         elif (x1 == 5):
#             fun.show_emp()
#         elif (x1 == 6):
#             adminPage1(adminID)
#         else:
#             print("Invalid option")

def adminPage1(adminID):
    print("\n1. Manage Factories")
    print("2. Manage Collection Centre")
    print("3. Go Back")
    while (True):
        x = int(input("\n\nEnter Choice: "))
        if (x==1):
            manageFactories(adminID)
            return
        elif(x==2):
            fun.getCentresForAdmin(adminID)
        # elif(x==3):
        #     manage_retailers(adminID)
        # elif(x==4):
        #     manage_employees(adminID)
        elif(x==3):
            return
        else:
            print("\nInvalid option")
            continue

def mainAdmin():
    while(True):
        print("\n1. Add new Collection Centre")
        print("\n2. Add new Product")
        print("\n3. Add new Admin")
        print("\n4. Assign new responsibilites to an Admin")
        print("\n5. Go Back")
        x = int(input("Enter Choice"))
        if (x == 1):
            fun.add_cc(12)
        elif (x == 2):
            fun.add_product(12)
        elif(x==3):
            fun.register()
        elif (x==4):
            aid = int(input("\nEnter admin id: "))
            print("\n1. Assign new collection center")
            print("\n2.Assign new factory")
        


def startpage():
    print("\n routing to home page")
    anime.dots(4)
    print("\n--------------Welcome to MILKYDAY--------------\n")
    while(True):
        print("\n1. Enter as Admin")
        print("\n2. Enter as Retailer")
        print("\n3. Enter as Main Admin")
        print("\n4. Exit")
        x = int(input("\nEnter Choice: "))
        if (x ==1):
            u = input("Enter Username: ")
            p = input("Enter Password: ")
            print("\nLogging in")
            anime.dots(3)
            validateAdminLogin(u,p)
        elif(x==2):
            u=input("Enter username: ")
            p = int(input("Enter password: "))
            print("\nLogging in")
            anime.dots(3)
            validateRetailerLogin(u,p)
        elif(x == 3):
            passw = int(1111)
            pa = int(input("Enter Main Admin password: "))
            if (passw == pa):
                fun.register()
                startpage()
            else:
                print("** Access Denied **")
                return
        elif(x == 4):
            print("* Exiting Application * \nplease wait")
            anime.dots(4)
            exit(1)
        else:
            print("** Invalid Option **")

print("\nStarting the Software")
anime.dots(4)
startpage()



