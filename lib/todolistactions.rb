class TodoListActions
  attr_reader :todo_list

  def initialize
    @todo_list =[]
  end

  def new_todo(todo)
    newtodo = NewToDoItem.new(todo)
    new_entry = {
      todo: newtodo.todo,
      completed: newtodo.completed
    }
    todo_list << new_entry
  end

  def edit_todo(index, change_to)
    todo_list[index][:todo] = change_to
  end

  def mark_as_complete(index)
    todo_list[index][:completed] = true  
  end

end
