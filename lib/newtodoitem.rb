class NewToDoItem
  attr_reader :todo, :completed

  def initialize(todo)
    @todo = todo
    @completed = false
  end

  def create_todo
    {
      todo: @todo,
      completed: @completed
    }
  end
end
