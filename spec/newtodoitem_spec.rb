require 'newtodoitem'

RSpec.describe NewToDoItem do

  it "creates an instance of NewToDoItem" do
    newtodoitem = NewToDoItem.new('wash clothes')
    expect(newtodoitem.is_a?Object).to eq(true)
  end

  it "creates an instance of NewToDoItem and makes it into a " do
    newtodoitem = NewToDoItem.new('wash clothes')
    expect(newtodoitem.is_a?Object).to eq(true)
  end
end
