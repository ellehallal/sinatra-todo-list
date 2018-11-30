require 'newtodoitem'

RSpec.describe NewToDoItem do

  it "creates an instance of NewToDoItem" do
    newtodoitem = NewToDoItem.new("wash clothes")
    expect(newtodoitem.is_a?Object).to eq(true)
  end

  it "creates an instance of NewToDoItem and makes it into a hash" do
    newtodoitem = NewToDoItem.new("wash clothes")
    expect(newtodoitem.create_todo).to eq({todo: "wash clothes", completed: false})
  end
end
