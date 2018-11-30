require 'newtodoitem'
require 'todolistactions'

RSpec.describe TodoListActions do

  it "creates a todo_list array" do
    todos = TodoListActions.new
    expect(todos.todo_list).to eq([])
  end

  it "creates a new todo item" do
    new_todo = TodoListActions.new
    expect(new_todo.new_todo("wash clothes")).to eq({todo: "wash clothes", completed: false})
  end
end
