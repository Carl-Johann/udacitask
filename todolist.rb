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
end

class Item
	attr_reader :description, :completed_status

	def initialize(item_description)
		@description = item_description
		@completed_status = false
	end
end
