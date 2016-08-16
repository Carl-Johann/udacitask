class TodoList
attr_reader :title, :items
  
  	def initialize(list_title)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
    end

    def add_item(new_item)
     	item = Item.new(new_item)
     	@items.push(item)
    end

   	def print_items_in_array
   		puts
   		puts
   		puts @title
   		puts "-"*24
   		puts "-"*24
   		@items.each do |item|
   			puts "#{item.description}"
   			puts "Completion Status: #{item.completed_status}"
   			puts "-"*17
   		end
   	end

   	def change_completed_status(index)
   		@items[index].completion_status_changed
   	end
   	
   	def lort
   		puts "#{@items[1].completed_status}"
   	end

    def delete_item(item_place)
    	@items.delete_at(item_place)
    end	

    def update_title(new_title)
    	@title = new_title
    end

    def check_for_list_length
    	puts
    	if @items.empty? == false
    		puts "Your 'New Awesome Todo List' Is Unfortunately Not Finished..."
    	else
    		puts "Nice! All Done. Now, play WoW"
    	end
    end	
end

class Item
	attr_reader :description, :completed_status
	attr_writer :completed_status

	def initialize(item_description)
		@description = item_description
		@completed_status = false
	end

	def print_each_item
	    puts "#{@description}"
		puts "#{completed_status}"
		puts "-"*17
    end

    def completion_status_changed
    	@completed_status = true
    end
end
