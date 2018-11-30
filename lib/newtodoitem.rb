class NewToDoItem
  attr_reader :todo, :completed
  
  def initialize(todo)
    @todo = todo
    @completed = false
  end


end
