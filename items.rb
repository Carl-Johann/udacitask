require_relative 'todolist.rb'
load "todolist.rb"
# Creates a new todo list
list = TodoList.new("Gymlife ToDo List")
# Add four new items
list.add_item("Go To The Gym")
list.add_item("Enter The Gym Looking Badass")
list.add_item("Realise You Aren't That Massive")
list.add_item("Get Massive")
# Print the list
list.print_items_in_array 
# Delete the first item
list.delete_item(0)
# Print the list
list.print_items_in_array
# Delete the second item
list.delete_item(0)
# Print the list
list.print_items_in_array
# Update the completion status of the first item to complete
list.change_completed_status(0)
# Print the list
list.print_items_in_array
# Update the title of the list
list.update_title("New Awesome Todo List")
#list.print_list 
list.print_items_in_array


#feature
list.check_for_list_length