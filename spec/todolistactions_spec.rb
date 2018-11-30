require 'newtodoitem'
require 'todolistactions'

RSpec.describe TodoListActions do

  it "creates a todo_list array" do
    todos = TodoListActions.new
    expect(todos.todo_list).to eq([])
  end

  # it "creates an instance of NewToDoItem" do
  #   new_todo = TodoListActions.new
  #   new_todo.new_todo("wash clothes")
  #   expect(new.todo).to eq({todo: "wash clothes", completed: false})
  # end
end
