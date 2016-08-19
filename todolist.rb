class TodoList
attr_reader :title, :items
  	
  	def initialize(list_title)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
    	@time_today = Time.new(2016, 8, 16, 12,15, "+01:00")
    end

    def add_item(new_item, year, month, day, hour, minute, time_code)
     	item = Item.new(new_item, year, month, day, hour, minute, time_code)
     	@items.push(item)
    end
   
	def clear_list
    	@items.clear
    	update_title("Your To-Do List Is Empty")
    end

    def is_it_overdue?(date) 
    	if @time_today > date
    		return false
    	else
    		return true
    	end
    end

   	def print_items_in_array
   		puts
   		puts @title
   		puts "-"*24
   		@items.each do |item|
   			if is_it_overdue?(item.due_date) == false
   				item.completion_status_overdue
   			end
   			item.print_each_item
   		end
   	end

   	def change_completed_status(index)
   		@items[index-1].completion_status_changed
   	end

    def delete_item(item_place)
    	@items.delete_at(item_place-1)
    end	

    def update_title(new_title)
    	@title = new_title
    end

    def am_i_done?
    	if @items.length == 0
    		return "List Is Empty. You're Done"
    	else
    		return "List Is Not Empty. You're Not Done"
    	end
    end

end

class Item
	attr_reader :description
	attr_accessor :completed_status, :due_date

	def initialize(item_description, year, month, day, hour, minute, time_code)
		@description = item_description
		@completed_status = false
		@due_date = Time.new(year, month, day, hour, minute, time_code)
	end

	def print_each_item
	    puts "#{@description}"
		puts "Completion Status: #{completed_status}"
		puts "-"*17
    end

    def completion_status_overdue
    	@completed_status = "OVERDUE"
    end

    def completion_status_changed
    	@completed_status = true
    end
end
