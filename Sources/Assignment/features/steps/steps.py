from behave import *

@given("User is an admin")
def step_impl(context):
    context.isAdmin = True

@given("User is not an admin")
def step_impl(context):
    context.isAdmin = False

@given("The current inventory is in the table")
def step_impl(context):
    context.inventory = [(row[0], int(row[1]), int(row[2])) for row in context.table]





@when("User presses the button to generate the inventory report")
def step_impl(context):
    #Passing since we cannot test on UI elements
    pass

@when("User presses the button to add an item to the inventory")
def step_impl(context):
    #Passing since we cannot test on UI elements
    pass

@when(u'User presses the button to remove an item from the inventory')
def step_impl(context):
    #Passing since we cannot test on UI elements
    pass

@when(u'User presses the button to edit an item in the inventory')
def step_impl(context):
    #Passing since we cannot test on UI elements
    pass





@when("The name of the item to add is {name}")
def step_impl(context, name):
    context.newItem = [name]

@when("The quantity of the item to add is {quantity}")
def step_impl(context, quantity):
    context.newItem.append(int(quantity))

@when("The price of the item to add is {price}")
def step_impl(context, price):
    context.newItem.append(int(price))





@when("The name of the item to remove is {name}")
def step_impl(context, name):
    context.remItem = [name]

@when("The quantity of the item to remove is {quantity}")
def step_impl(context, quantity):
    if quantity.lower() == "all":
        context.remItem.append("all")
    else:
        context.remItem.append(-int(quantity))





@when("The name of the item to edit is {name}")
def step_impl(context, name):
    context.edtItem = [name]

@when("The price of the item to edit is {price}")
def step_impl(context, price):
    context.edtItem.append(int(price))





@when("The item to add is existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.newItem[0]:
            return
    assert False

@when("The item to add is not existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.newItem[0]:
            assert False  





@when("The price is the same")
def step_impl(context):
    for name, _, price in context.inventory:
        if name == context.newItem[0]:
            if price == context.newItem[2]:
                return
            else:
                break
    assert False

@when("The price is not the same")
def step_impl(context):
    for name, _, price in context.inventory:
        if name == context.newItem[0]:
            if price != context.newItem[2]:
                return
            else:
                break
    assert False





@when("The item to remove is existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.remItem[0]:
            return
    assert False

@when("The item to remove is not existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.remItem[0]:
            assert False





@when("The quantity is existing")
def step_impl(context):
    for name, quantity, _ in context.inventory:
        if name == context.remItem[0]:
            if quantity > -context.remItem[1]:
                return
            else:
                break
    assert False

@when("The quantity is not existing")
def step_impl(context):
    for name, quantity, _ in context.inventory:
        if name == context.remItem[0]:
            if quantity < -context.remItem[1]:
                return
            else:
                break
    assert False





@when("The item to edit is existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.edtItem[0]:
            return
    assert False

@when("The item to edit is not existing")
def step_impl(context):
    for name, _, _ in context.inventory:
        if name == context.edtItem[0]:
            assert False





@then("Add the new item to the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    context.inventory.append(tuple(context.newItem))
    
    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Add the quantity to the existing item in the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    newInventory = []

    for name, quantity, price in context.inventory:
        if name == context.newItem[0]:
            context.newItem[1] += quantity
            newInventory.append(tuple(context.newItem))
        else:
            newInventory.append((name, quantity, price))
    context.inventory = newInventory

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Dont add the item to the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass    





@then("Remove the quantity of item from the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    newInventory = []

    for name, quantity, price in context.inventory:
        if name == context.remItem[0]:
            context.remItem[1] += quantity
            context.remItem.append(price)
            newInventory.append(tuple(context.remItem))
        else:
            newInventory.append((name, quantity, price))
    context.inventory = newInventory

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Remove all of the item from the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    newInventory = []

    for name, quantity, price in context.inventory:
        if name == context.remItem[0]:
            pass
        else:
            newInventory.append((name, quantity, price))
    context.inventory = newInventory

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Dont remove the quantity of item from the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Dont remove the item from the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass





@then("Edit the existing item in the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    newInventory = []

    for name, quantity, price in context.inventory:
        if name == context.edtItem[0]:
            context.edtItem.append(context.edtItem[1])
            context.edtItem[1] = quantity
            newInventory.append(tuple(context.edtItem))
        else:
            newInventory.append((name, quantity, price))
    context.inventory = newInventory

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Dont edit the item in the inventory")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround

    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass





@then("Display the current inventory to the user")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    if (context.isAdmin == True):
        print("|%-10s|%-10s|%-10s|" % ("name", "quantity", "price"))
        for name, quantity, price in context.inventory:
            print("|%-10s|%-10s|%-10s|" % (name, quantity, price))
        pass

@then("Dont Display the current inventory to the user")
def step_impl(context):
    #Passing since we cannot display on UI elements
    pass





@then("Display an error message to the user")
def step_impl(context):
    #Passing since we cannot display on UI elements
    #Printing to terminal as a temporary workaround
    print(context.text)
    pass