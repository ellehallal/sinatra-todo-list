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

  def show_all_todos
    todo_list.each do |todo_entry|
      todo_entry.each do |todo, completed|
        puts todo
      end
    end
  end

  def show_completed_todos
    todo_list.each do |todo_entry|
      todo_entry.each do |todo, completed|
        if todo_entry[:completed] = true
          puts todo
        end
      end
    end
  end

  def show_incomplete_todos
    todo_list.each do |todo_entry|
      todo_entry.each do |todo, completed|
        if todo_entry[:completed] = false
          puts todo
        end
      end
    end
  end

end
