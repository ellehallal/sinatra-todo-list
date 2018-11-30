require 'newtodoitem'
require 'todolistactions'

RSpec.describe TodoListActions do

  it "creates a todo_list array" do
    todos = TodoListActions.new
    expect(todos.todo_list).to eq([])
  end

  it "creates a new todo item and adds to todo_list" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    expect(new_todo.todo_list).to eq([{todo: "wash clothes", completed: false}])
  end

  it "creates a new todo item and edits todo to 'wash shoes'" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.edit_todo(0, "wash shoes")
    expect(new_todo.todo_list).to eq([{todo: "wash shoes", completed: false}])
  end
end
