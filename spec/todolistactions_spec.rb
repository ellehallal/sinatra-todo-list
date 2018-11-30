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

  it "marks a todo as complete" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.new_todo("buy milk")
    new_todo.mark_as_complete(1)
    expect(new_todo.todo_list).to eq([{todo: "wash clothes", completed: false}, {todo: "buy milk", completed: true}])
  end

  it "shows all todos" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.new_todo("buy milk")
    new_todo.mark_as_complete(1)
    expect(new_todo.show_all_todos).to eq([{todo: "wash clothes", completed: false}, {todo: "buy milk", completed: true}])
  end

  it "returns completed todos only" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.new_todo("buy milk")
    new_todo.mark_as_complete(1)
    expect(new_todo.show_completed_todos).to eq([{todo: "buy milk", completed: true}])
  end

  it "returns incomplete todos only" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.new_todo("buy milk")
    new_todo.mark_as_complete(1)
    expect(new_todo.show_incomplete_todos).to eq([{todo: "wash clothes", completed: false}])
  end

  it "toggles all completed todos to incomplete" do
    new_todo = TodoListActions.new
    new_todo.new_todo("wash clothes")
    new_todo.new_todo("buy milk")
    new_todo.mark_as_complete(1)
    expect(new_todo.toggle_all_completed_todos).to eq([{todo: "wash clothes", completed: false}, {todo: "buy milk", completed: false}])
  end

end
