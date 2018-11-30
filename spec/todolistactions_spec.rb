require 'newtodoitem'
require 'todolistactions'

RSpec.describe TodoListActions do

  it "creates a todo_list array" do
    todos = TodoListActions.new
    expect(todos.todo_list).to eq([])
  end
end
