class TodoList
	def initialize(list_array)
		@list_array = list_array
	end
	
	def get_items
		@list_array
	end

	def add_item(new_item)
		@list_array << new_item
	end

	def delete_item(deleted_item)
		@list_array.delete(deleted_item)
	end

	def get_item(index)
		@list_array[index]
	end

end