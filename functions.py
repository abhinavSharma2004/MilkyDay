import mysql.connector as sql
# import interface as inter
from animation import Animations as anime
from datetime import date

order = []

def show_factories(adminID):
    print('Factories managed by you: \n')
    conec = sql.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select factoryID, location from factory where adminID=" + str(adminID)
    cur.execute(query)
    show = cur.fetchall()
    print("Factory ID       Factory Location")
    for i in range(len(show)):
        print(" "*(5-len(str(show[i][0])))+str(show[i][0])+" "*(5-len(str(show[i][0]))))
        print(" "*(12-len(str(show[i][0])))+str(show[i][1])+" "*(12-len(str(show[i][0]))))
        print("\n")

def getBestEmployee(factID):
    conec = sql.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select max(totalTime) from (select * from (select factoryID, employeeID, max(timeWorked) as totalTime from employee group by factoryID, EmployeeID with rollup)f where f.factoryID ="+str(factID)+")x"
    cur.execute(query)
    show1 = cur.fetchall()
    #print(show1[0][0])
    cur.execute("select employeeID, Employee_Name from employee where factoryID = %s and timeWorked =%s",[factID,show1[0][0]])
    show2 = cur.fetchall()
    print("\nBest Employee is "+ str(show2[0][1])+" and has worked for "+ str(show1[0][0])+" years", )

def getNumberofCentres(factID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select centerID, num from (select factoryID, centerID, count(centerID) as num from collection_center group by factoryID, centerID with rollup)f where factoryID=" + str(factID)
    cur.execute(query)
    show = cur.fetchall()
    print("\nThere are "+show[-1][1]+"centres delivering to this factory. They are: ")

def getTotalSale(factID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select f.productsID, f.total from (SELECT factoryID, productsID, sum(quantity*(select wholesale from products p where p.productID=n.productsID))as total from production n group by factoryID, productsID with rollup)f where f.factoryID =" + str(factID)
    cur.execute(query)
    show = cur.fetchall()
    print("\nTotal Sale: " + str(show[-1][1]))

def giveBonus(factID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "UPDATE employee SET Salary = Salary*1.02 where timeWorked > 5 and timeWorked < 10 and factoryID="+ str(factID)
    cur.execute(query)
    query = "UPDATE employee SET Salary = Salary*1.05 where timeWorked > 10 and factoryID="+ str(factID)
    cur.execute(query)
    print("\nUpdate Done")

def add_product():
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    reply = "y"
    while reply == "y":
        ID_input = int(input("Enter ID: "))
        category_input = input("Enter Category name: ")
        product_input = input("Enter Product name: ")
        desc_input = str(input("Enter Description: "))
        package_input = int(input("Enter Packaging: "))
        wholesale_input = int(input("Enter Wholesale price: "))
        expiry_input = (input("Enter Expiry duration: "))
        MRP_input = int(input("Enter MRP: "))
        catID_input = int(input("Enter Category ID: "))
        rec = [ID_input,category_input,product_input,desc_input,package_input,wholesale_input,expiry_input,MRP_input,catID_input]
        query = "INSERT INTO products VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        cur.execute(query,rec)
        conec.commit()
        print ("")
        print("     **New data added**")
        print ("")
        print("Add more? (y/n) ")
        reply = (input())

def add_ret_product(retailer_id):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    pro_Id = int(input("Enter product ID: "))
    quan = int(input("Enter quantity: "))
    fact = int(input("Enter Factory ID: "))
    query1 = "select max(s_no) from production"
    cur.execute(query1)
    show = cur.fetchall()
    rec = [int(show[0][0])+1, pro_Id, fact, retailer_id, quan]
    query = "INSERT INTO production VALUES (%s,%s,%s,%s,%s)"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Product added to production *")

def delete_ret_product(retailer_id):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    pro_Id = int(input("Enter product ID: "))
    fact = int(input("Enter Factory ID: "))
    rec = [pro_Id, fact, retailer_id]
    query = "Delete from production where productsID = %s and factoryID = %s and retailerID = %s"
    cur.execute(query,rec)
    print("\n* Deletion Done *")

def show_ret_products(retailer_id):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    cur.execute("select * from production where retailerID = "+str(retailer_id))
    show=cur.fetchall()
    print ("+" ,"-"*77,"+")
    print ("| Serial no.   ","| Product ID   ","| Factory ID   ","| Retailer ID  ","| Quantity      |")
    for row in show:
        sn = "{:<12}".format(row[0])
        pi = "{:<12}".format(row[1])
        fi = "{:<12}".format(row[2])
        ri = "{:<12}".format(row[3])   
        quan = row[4]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        print ("|" ,"-"*13, "+","-"*13,"+","-"*13,"+","-"*13,"+","-"*13,"|")
        print ("|",sn,' '*(12-len(sn)) , "|",pi,' '*(12-len(pi)) , "|",fi,' '*(12-len(fi)) , "|",ri,' '*(12-len(ri)) , '|',quan, ' '*(12-len(quan)),"|")
    print ("+" ,"-"*77,"+")
    go = input("PRESS ENTER TO GO BACK")

def add_customer(retailer_id):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    name = str(input("Enter name: "))
    gen = str(input("Enter gender: "))
    DOB = str(input("Enter date of birth(YYYY-MM-DD): "))
    mob = int(input("Enter Mobile no: "))
    query1 = "select max(CustomerID) from customer"
    cur.execute(query1)
    show = cur.fetchall()
    rec = [int(show[0][0])+1, name, gen, DOB, mob]
    query = "INSERT INTO customer VALUES (%s,%s,%s,%s,%s)"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Customer Added *")

def delete_customer(retailerID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    cus = int(input("Enter Customer ID to delete: "))
    rec = [cus]
    query = "Delete from customer where CustomerID = %s"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Deletion Done *")

def update_customer(x4,input_ID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    reply = "y"
    while reply == "y":
        if (x4 == 1):
            cond1 = str(input("Set name to: "))
            query = "update customer set Customer_name = %s where CustomerID = %s"
        elif (x4 == 2):
            cond1 = str(input("Set Phone no. to: "))
            query = "update customer set Phone_no = %s where CustomerID = %s"
        condition = [cond1,int(input_ID)]
        cur.execute(query,condition)
        conec.commit()
        print("")
        print("     **Updated successfully**")
        print("")
        print("Update more? (y/n) ")
        reply = (input())

def show_customer():
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Fetching data")
    anime.dots(5)
    cur.execute("select * from customer")
    show=cur.fetchall()
    print ("+" ,"-"*77,"+")
    print ("| Customer ID   ","| Name           ","| Gender   ","| DOB     ","| Phone no.      |")
    for row in show:
        sn = "{:<5}".format(row[0])
        pi = "{:<20}".format(row[1])
        fi = "{:<8}".format(row[2])
        ri = row[3]   
        quan = row[4]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        print ("|" ,"-"*6, "+","-"*37,"+","-"*8,"+","-"*13,"+","-"*13,"|")
        print ("|",sn,' '*(5-len(sn)) , "|",pi,' '*(20-len(pi)) , "|",fi,' '*(8-len(fi)) , "|",ri,' '*(12-len(ri)) , '|',quan, ' '*(12-len(quan)),"|")
    print ("+" ,"-"*77,"+")
    go = input("PRESS ENTER TO GO BACK")

def delete_product(factoryID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    cus = int(input("Enter Product ID to delete from production by this factory: "))
    rec = [int(factoryID),cus]
    query = "Delete from production where factoryID = %s and productsID = %s"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Deletion Done *")

def update_product(x,pro_ID):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    if (x == 1):
        cond1 = str(input("Set name to: "))
        query = "update products set Product_name = %s where productID = %s"
    elif (x == 2):
        cond1 = str(input("Set Description to: "))
        query = "update products set product_description = %s where productID = %s"
    elif (x == 3):
        cond1 = int(input("Set Wholesale price to: "))
        query = "update products set wholesale = %s where productID = %s"
    condition = [cond1,int(pro_ID)]
    cur.execute(query,condition)
    conec.commit()
    print("")
    print("     **Updated successfully**")
    print("")

def show_products():
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Fetching data")
    anime.dots(5)
    cur.execute("select * from products")
    show=cur.fetchall()
    print ("+" ,"-"*120,"+")
    print ("| ID    ","| Product Name       ","| Category       ","| Description           ","| Packaging   ","| Wholesale  ","| MRP   |")
    for row in show:
        sn = "{:<7}".format(row[0])
        pi = "{:<12}".format(row[2])
        fi = "{:<12}".format(row[1])
        desc = "{:<20}".format(row[3])   
        pack = row[4]
        whole = row[5]
        mrp = row[7]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        desc = str(desc)
        pack = str(pack)
        whole = str(whole)
        mrp = str(mrp)
        print ( "\n|",sn,' '*(7-len(sn)) , "|",pi,' '*(12-len(pi)) , "|",fi,' '*(12-len(fi)) , "|",desc,' '*(20-len(desc)) , '|',pack, ' '*(5-len(pack)), '|',whole, ' '*(5-len(whole)), '|',mrp, ' '*(5-len(mrp)),"|")
    print ("+" ,"-"*120,"+")
    go = input("PRESS ENTER TO GO BACK")

def make_bill():
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    billy=[]
    sum = float(0)
    reply = "y"
    while reply == "y":
        cond = int(input("Enter the Product ID : "))
        quan = int(input("Enter Quantity: "))
        cur.execute("select MRP from products where productID = '%s'" %(cond))
        change = cur.fetchone()
        change = float(change[0])
        if (change == None):
            print("** Invalid Input **")
            return
        cur.execute("select Product_name from products where productID = '%s'" %(cond))
        name = cur.fetchone()
        name = str(name[0])
        print(change)
        billy.append([str(cond), str(name), str(change), str(change*quan)])
        sum += change*quan
        print("add more items to the bill? (y/n) ")
        reply = (input())
    print("\n\n         Bill for Milkyday Dairy")
    print("\nProduct ID    | Product Name        | Quantity   | MRP   |\n")
    for i in billy:
        print ( "|",i[0],' '*(8-len(i[0])) , "|",i[1],' '*(16-len(i[1])) , "|",i[2],' '*(6-len(i[2])) , "|",i[3],' '*(5-len(i[3])),"|")
    print ("\nThe Total bill is ",sum)
    print()
    go = input("PRESS ENTER TO GO BACK")

def prod_quan(factid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    pro_Id = int(input("Enter product ID: "))
    ret = int(input("Enter Retailer ID: "))
    quan = int(input("Enter new quantity: "))
    rec = [quan, pro_Id, factid, ret]
    query = "Update production set quantity = %s where productsID = %s and factoryID = %s and retailerID = %s"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Update Done *")

def prod_reassign(factid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    pro_Id = int(input("Enter product ID: "))
    ret = int(input("Enter Retailer ID: "))
    quan = int(input("Enter new Factory to assign: "))
    rec = [quan, pro_Id, factid, ret]
    query = "Update production set factoryID = %s where productsID = %s and factoryID = %s and retailerID = %s"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Production Reassigned *")

def add_cc(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    name = str(input("Enter location: "))
    MC = int(input("Enter milk collected: "))
    MD = int(input("Enter milk delivered: "))
    fact = int(input("Enter factory to send to: "))
    amt = int(input("Enter amount paid: "))
    query1 = "select max(centerID) from collection_center"
    cur.execute(query1)
    show = cur.fetchall()
    rec = [int(show[0][0])+1, name, MC, MD, fact, adminid, amt]
    query = "INSERT INTO collection_center VALUES (%s,%s,%s,%s,%s)"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Center Added *")

def delete_cc(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    cus = int(input("Enter Center ID to remove: "))
    rec = [cus,adminid]
    query = "Delete from collection_center where centerID = %s and adminID = %s"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Deletion Done *")

def best_cc(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Best Collection center under you is: ")
    query1 = "select * from collection_center where milk_delivered = (select max(milk_delivered) from collection_center where adminID = %s);" %(adminid)
    cur.execute(query1)
    show = cur.fetchall()
    for i in show[0]:
        print(i,end="\t")
    
def show_cc(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Fetching data")
    anime.dots(5)
    cur.execute("select * from collection_center where adminID = %s"%int(adminid))
    show=cur.fetchall()
    print ("+" ,"-"*90,"+")
    print ("| Center ID","| location        ","| Milk collected","| Milk Delivered","| factory ID ","| Amount paid |")
    for row in show:
        sn = "{:<5}".format(row[0])
        pi = "{:<20}".format(row[1])
        fi = "{:<8}".format(row[2])
        ri = row[3]   
        quan = row[4]
        amt = row[6]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        amt = str(amt)
        print ("|" ,"-"*6, "+","-"*37,"+","-"*8,"+","-"*6,"+","-"*6,"-"*6,"|")
        print ("|",sn,' '*(5-len(sn)) , "|",pi,' '*(20-len(pi)) , "|",fi,' '*(8-len(fi)) , "|",ri,' '*(5-len(ri)) , '|',quan, ' '*(5-len(quan)),amt, ' '*(5-len(amt)),"|")
    print ("+" ,"-"*90,"+")
    go = input("PRESS ENTER TO GO BACK")

def profit_cc(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    cur.execute("select * from collection_center where adminID = %s order by milk_delivered desc"%int(adminid))
    show=cur.fetchall()
    print ("+" ,"-"*90,"+")
    print ("| Center ID","| location        ","| Milk collected","| Milk Delivered","| factory ID ","| Amount paid |")
    for row in show:
        sn = "{:<5}".format(row[0])
        pi = "{:<20}".format(row[1])
        fi = "{:<8}".format(row[2])
        ri = row[3]   
        quan = row[4]
        amt = row[6]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        amt = str(amt)
        print ("|" ,"-"*6, "+","-"*37,"+","-"*8,"+","-"*6,"+","-"*6,"-"*6,"|")
        print ("|",sn,' '*(5-len(sn)) , "|",pi,' '*(20-len(pi)) , "|",fi,' '*(8-len(fi)) , "|",ri,' '*(5-len(ri)) , '|',quan, ' '*(5-len(quan)),amt, ' '*(5-len(amt)),"|")
    print ("+" ,"-"*90,"+")
    go = input("PRESS ENTER TO GO BACK")

def search_quan(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Fetching data")
    anime.dots(2)
    ul = int(input("Enter upper limit: "))
    ll = int(input("Enter lower limit: "))
    cur.execute("select * from collection_center where adminID = %s and milk_collected > %s and milk_collected < %s"% (adminid,ll,ul))
    show=cur.fetchall()
    print ("+" ,"-"*90,"+")
    print ("| Center ID","| location        ","| Milk collected","| Milk Delivered","| factory ID ","| Amount paid |")
    for row in show:
        sn = "{:<5}".format(row[0])
        pi = "{:<20}".format(row[1])
        fi = "{:<8}".format(row[2])
        ri = row[3]   
        quan = row[4]
        amt = row[6]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        amt = str(amt)
        print ("|" ,"-"*6, "+","-"*37,"+","-"*8,"+","-"*6,"+","-"*6,"-"*6,"|")
        print ("|",sn,' '*(5-len(sn)) , "|",pi,' '*(20-len(pi)) , "|",fi,' '*(8-len(fi)) , "|",ri,' '*(5-len(ri)) , '|',quan, ' '*(5-len(quan)),amt, ' '*(5-len(amt)),"|")
    print ("+" ,"-"*90,"+")
    go = input("PRESS ENTER TO GO BACK")

def search_amt(adminid):
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    print("Fetching data")
    anime.dots(2)
    ul = int(input("Enter upper limit: "))
    ll = int(input("Enter lower limit: "))
    cur.execute("select * from collection_center where adminID = %s and amt_paid > %s and amt_paid < %s"% (adminid,ll,ul))
    show=cur.fetchall()
    print ("+" ,"-"*90,"+")
    print ("| Center ID","| location        ","| Milk collected","| Milk Delivered","| factory ID ","| Amount paid |")
    for row in show:
        sn = "{:<5}".format(row[0])
        pi = "{:<20}".format(row[1])
        fi = "{:<8}".format(row[2])
        ri = row[3]   
        quan = row[4]
        amt = row[6]
        sn = str(sn)
        pi = str(pi)
        fi = str(fi)
        ri = str(ri)
        quan = str(quan)
        amt = str(amt)
        print ("|" ,"-"*6, "+","-"*37,"+","-"*8,"+","-"*6,"+","-"*6,"-"*6,"|")
        print ("|",sn,' '*(5-len(sn)) , "|",pi,' '*(20-len(pi)) , "|",fi,' '*(8-len(fi)) , "|",ri,' '*(5-len(ri)) , '|',quan, ' '*(5-len(quan)),amt, ' '*(5-len(amt)),"|")
    print ("+" ,"-"*90,"+")
    go = input("PRESS ENTER TO GO BACK")

def register():
    conec = sql.connector.connect(host="localhost",password="Lalu@2004",user="root",database="milkyday")
    cur = conec.cursor()
    name = str(input("Enter name: "))
    gen = str(input("Enter gender: "))
    DOB = str(input("Enter Email: "))
    mob = str(input("Enter Password: "))
    query1 = "select max(adminID) from admin"
    cur.execute(query1)
    show = cur.fetchall()
    rec = [int(show[0][0])+1, name, gen, DOB, mob]
    query = "INSERT INTO admin VALUES (%s,%s,%s,%s,%s)"
    cur.execute(query,rec)
    conec.commit()
    print("\n* Admin Registered *")

def getCentresForFactory(factID):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "select centerID, num from (select factoryID, centerID, count(centerID) as num from collection_center group by factoryID, centerID with rollup)f where factoryID=" + str(factID)
    cur.execute(query)
    show = cur.fetchall()
    anime.dots(1)
    print("\nThere are "+str(show[-1][1])+"centres delivering to this factory.")
    query2 = "select centerID, location, milk_delivered from collection_center where factoryID=" + str(factID)
    cur.execute(query2)
    show1=cur.fetchall()
    anime.dots(2)
    print("Center ID       Center Location      Amount Delivered")
    max = 0
    id = 0
    location = ""
    for i in range(len(show1)):
        if( max < show1[i][2]):
            max = show1[i][2]
            id = show1[i][0]
            location = show1[i][1]
        print(" "*(5-len(str(show1[i][0])))+str(show1[i][0])+" "*(5-len(str(show1[i][0])))+" "*(12-len(str(show1[i][1])))+str(show1[i][1])+" "*(12-len(str(show1[i][1]))) +" "*(25-len(str(show1[i][2])))+str(show1[i][2])+" "*(25-len(str(show1[i][2]))))
    while(True):    
        print("\n1. Get collection centre that delivers the maximum amount of milk")
        print("2. Pay to Collection Centre after recieving milk")
        print("3. Go Back")
        x = int(input("\nEnter Choice"))
        if (x==1):
            print("\nThe centre that has delivered most amount of milk is " + str(max) +" "+ location+". It has delivered "+ str(max)+ " litres of milk")
        elif (x==2):
            print("")
            ccid = int(input("\nEnter Collection Centre ID: "))
            amt = int(input("Enter Amount of Milk Recieved: "))
            payment = amt*35
            query3 = ("update factory set Milk_Qty= Milk_Qty +" + str(amt)+ " where FactoryID= " + str(factID))
            cur.execute(query3)
            anime.dots(2)
            print("\nRs. "+ str(payment)+ " paid to Collection Centre "+ str(ccid))
        elif( x==3):
            break
        else:
            print("\nInvalid Choice")

def getEmployeesForFactory(factid):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "select EmployeeID, Employee_name, Job_Role from employee where factoryID =" + str(factid)
    cur.execute(query)
    show1 = cur.fetchall()
    anime.dots(2)
    print("Employee ID     EmployeeName     Job_Role")
    for i in range(len(show1)):
        print(" "*(5-len(str(show1[i][0])))+str(show1[i][0])+" "*(5-len(str(show1[i][0])))+" "*(12-len(str(show1[i][1])))+str(show1[i][1])+" "*(12-len(str(show1[i][1]))) +" "*(12-len(str(show1[i][2])))+str(show1[i][2])+" "*(12-len(str(show1[i][2]))))
    while(True):
        print("\n1. Get most working Employee in factory")
        print("2. Give Yearly Bonus to Employees")   
        print("3. Hire a new Employee")
        print("4. Fire an Employee") 
        print("5. Go back")

        x = int(input("\nEnter Choice: "))
        if (x == 1):
            getBestEmployee(factid)
        elif(x==2):
            giveBonus(factid)
        elif(x==3):
            hireNewEmployeeAtFactory(factid)
        elif(x==4):
            fireEmployee(factid)
        elif(x == 5):
            return
        else:
            print("\nInvalid Option")
            

def getBestEmployee(factID):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select max(totalTime) from (select * from (select factoryID, employeeID, max(timeWorked) as totalTime from employee group by factoryID, EmployeeID with rollup)f where f.factoryID ="+str(factID)+")x"
    cur.execute(query)
    show1 = cur.fetchall()
    #print(show1[0][0])
    cur.execute("select employeeID, Employee_Name from employee where factoryID = %s and timeWorked =%s",[factID,show1[0][0]])
    show2 = cur.fetchall()
    print("\nBest Employee is "+ str(show2[0][1])+" and has worked for "+ str(show1[0][0])+" years")

def giveBonus(factID):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "UPDATE employee SET Salary = Salary*1.02 where timeWorked > 5 and timeWorked < 10 and factoryID="+ str(factID) +";UPDATE employee SET Salary = Salary*1.05 where timeWorked > 10 and factoryID="+ str(factID)
    cur.execute(query)
    print("\nUpdate Done")

def hireNewEmployeeAtFactory(factid):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    id = (input("\nEnter Id: "))
    name = input("Enter Name: ")
    job = input("Enter job role: ")
    salary = 0
    if (job == "worker"):
        salary = 10000
    elif(job == "cleaner"):
        salary = 8000
    elif(job == "manager"):
        salary = 25000
    elif(job == "general manager"):
        salary = 50000
    gender = input("Enter gender: ")
    dob = input("Enter Date of Birth: ")
    join = date.today()
    time = 0
    input = str(id) +", "+ str(name) +", "+ str(salary) +", "+ str(dob) +", "+ str(gender) +", "+ str(job) +", "+ str(factid) +", "+ str(join) +", "+ str(time)
    query = "Insert into employee(EmployeeID, Employee_name, Salary, DOB, Gender, Job_Role, factoryID, joiningDate, timeWorked) values(" + input + ")"
    cur.execute(query)
    anime.dots(2)
    print("Employee details added to database")



def fireEmployee(factID):
    id = int(input("Enter employeeID of the employee that is to be fired: "))
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "delete from employee where EmployeeID =" + str(id)
    cur.execute(query)
    anime.dots(2)
    print("Employee details have been removed from database")
    

def getStockProduct(factid):

    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "Select p.productID, p.Product_name , p.packaging from products p, factory_stock f where f.Product_ID = p.productID and f.Factory_ID = " + str(factid) 
    cur.execute(query)
    show1 = cur.fetchall()
    anime.dots(2)
    print("ProductID     ProductName     Packaging")
    for i in range(len(show1)):
        print(" "*(5-len(str(show1[i][0])))+str(show1[i][0])+" "*(5-len(str(show1[i][0])))+" "*(12-len(str(show1[i][1])))+str(show1[i][1])+" "*(12-len(str(show1[i][1]))) +" "*(12-len(str(show1[i][2])))+str(show1[i][2])+" "*(12-len(str(show1[i][2]))))
    print("\n1. Update product and milk stock after daily production")
    print("2. Get total sale made by factory")
    print("3. Add new product that will be produced in this factory")
    print("4. Stop Production of a product")
    print("5. Update deatils of Product")
    print("6. Go back")
    x = int(input("\n Enter Choice: "))
    if (x == 1):
        for row in show1:
            qty = input("Enter quantity produced today of product " + str(row[0]) + " " + str(row[1])+ " ")
            query1 = "Update factory_stock set quantity = quantity + " + str(qty) + " where Product_ID = " + str(row[0])
            query2 = "Update factory set Milk_Qty = Milk_Qty - "+ str((row[2]-10)*int(qty))+ " where FactoryID = " + str(factid) 
            cur.execute(query1)
            cur.execute(query2)
        print("All Updates done")
    elif (x == 2):
        getTotalSale(factid)
    elif(x==3):
        sno += 1
        pid = input("\nEnter ID of product whose production you want to begin: ")
        input = str(sno)+ ", " +str(factid)+ ", " +str(pid)+ ", 0 "
        query3 = "Insert into factory_stock(S.No, Factory_ID, Product_ID, quantity) values(" + input +")"
        cur.execute(query3)
    elif(x ==4):
        pid = input("\nEnter ID of product whose production is to be stopped: ")
        query4="delete from factory_stock where Product_ID = " + str(pid)
        cur.execute(query4)
    elif(x==5):
        while (True):
            input_ID = int(input("\nEnter Product ID to update: "))
            print("\n1. Update Name")
            print("2. Update Description")
            print("3. Update Wholesale price")
            print("4. Go Back")
            x2 = input("\n Enter Choice: ")
            if (x2 == 4):
                break
            else:
                update_product(x2,input_ID)
    elif(x==6):
        return
    else:
        print("\nInvalid Option")

def getTotalSale(factID):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    if conec.is_connected() :
        print("Connected")
    cur = conec.cursor()
    query = "select f.productsID, f.total from (SELECT factoryID, productsID, sum(quantity*(select wholesale from products p where p.productID=n.productsID))as total from production n group by factoryID, productsID with rollup)f where f.factoryID =" + str(factID)
    cur.execute(query)
    show = cur.fetchall()
    print("\nTotal Sale: " + str(show[-1][1]))

def getCentresForAdmin(adminID):

    print('Collection Centres managed by you: \n')
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "select centerID, location from collection_center where adminID=" + str(adminID)
    cur.execute(query)
    show = cur.fetchall()
    anime.dots(1)
    print("Center ID       Center Location")
    for i in range(len(show)):
        print(" "*(5-len(str(show[i][0])))+str(show[i][0])+" "*(5-len(str(show[i][0])))+" "*(12-len(str(show[i][0])))+str(show[i][1])+" "*(12-len(str(show[i][0]))))
    cid = int(input("\nEnter centerID for the factory you would like to manage"))
    while(True):
        print("\n1. Manage Farmers")
        print("2. Manage Delivery")
        print("3. Manage Employees")
        print("4. Go Back")
        x = int(input("\n Enter choice: "))
        if (x ==1):
            manageFarmers(cid)
        elif(x==2):
            manageDelivery(cid)
        elif (x==3):
            manageEmployee(cid)
        else:
            return

def manageFarmers(cid):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "select FarmerID, Farmer_Name from farmer where centreID=" + str(cid)
    cur.execute(query)
    show = cur.fetchall()
    anime.dots(1)
    print("Farmer ID      Farmer_Name")
    for i in range(len(show)):
        print(" "*(5-len(str(show[i][0])))+str(show[i][0])+" "*(5-len(str(show[i][0])))+" "*(12-len(str(show[i][0])))+str(show[i][1])+" "*(12-len(str(show[i][0]))))

    print("\n1.Get Best Farmer")
    print("2. Pay to farmer after recieving milk and update collection center's milk quantity")
    print("3. Add new Farmer")
    print("4. Remove a farmer")
    print("5. Go Back")

def manageDelivery(cid):
    inp = int(input("Enter amount to be delivered to factory: "))
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "Update factory set Milk_Qty = Milk_Qty + " + str(inp) + " where FactoryID = (select factoryID from collection_center where centerID = "+ str(cid) + ")"
    cur.execute(query)
    print("\nDelivery sent")

def manageEmployee(cid):
    conec = sql.connect(host="localhost",user="root",password="Lalu@2004",database="milkyday")
    # if conec.is_connected() :
    #     print("Connected")
    cur = conec.cursor()
    query = "select EmployeeID, Employee_name, Job_Role from employee where centreID =" + str(cid)
    cur.execute(query)
    show1 = cur.fetchall()
    anime.dots(2)
    print("Employee ID     EmployeeName     Job_Role")
    for i in range(len(show1)):
        print(" "*(5-len(str(show1[i][0])))+str(show1[i][0])+" "*(5-len(str(show1[i][0])))+" "*(12-len(str(show1[i][1])))+str(show1[i][1])+" "*(12-len(str(show1[i][1]))) +" "*(12-len(str(show1[i][2])))+str(show1[i][2])+" "*(12-len(str(show1[i][2]))))