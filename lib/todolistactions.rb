class TodoListActions
  attr_reader :todo_list

  def initialize
    @todo_list =[]
  end

  def new_todo(todo)
    newtodo = NewToDoItem.new(todo)
    {
      todo: newtodo.todo,
      completed: newtodo.completed
    }
  end

end
