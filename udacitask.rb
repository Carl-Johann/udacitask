require_relative 'todolist.rb'
load "todolist.rb"
# Creates a new todo list
list = TodoList.new("Gymlife ToDo List")
# Add four new items
list.add_item("Wake Up", 2016, 8, 19, 7,20, "+01:00")
list.add_item("Go To School", 2016, 8, 19, 8,5, "+01:00")
list.add_item("Go To The Gym ", 2016, 8, 19, 15,15, "+01:00")
list.add_item("Get Massive", 2016, 8, 19, 16,15, "+01:00")
#list.determine_items_length
# Print the list
list.print_items_in_array 
# Delete the first item
list.delete_item(1)
# Print the list
list.print_items_in_array
# Delete the second item
list.delete_item(1)
# Print the list
list.print_items_in_array
# Update the completion status of the first item to complete
list.change_completed_status(1)
# Print the list
list.print_items_in_array
# Update the title of the list
list.update_title("New Awesome Todo List")
#list.print_list 
list.print_items_in_array

#Features
#list.am_i_done?
#list.is_it_overdue?
#list.clear_list

