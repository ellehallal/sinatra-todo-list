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

end
