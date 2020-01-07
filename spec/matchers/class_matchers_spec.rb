class Parent; end

class Child < Parent
  attr_accessor :name
end

parent = Parent.new
child = Child.new

describe "Class Matchers" do
  example "BE_INSTANCE_OF" do
    expect(parent).to be_instance_of(Parent)
    expect(child).to be_instance_of(Child)
    expect(child).not_to be_instance_of(Parent)
  end

  example "BE_KIND_OF // BE_A // BE_AN" do
    expect(parent).to be_kind_of(Parent)
    expect(child).to be_kind_of(Child)
    expect(child).to be_kind_of(Parent)
  end

  example "RESPOND_TO" do
    expect([1, 2, 3]).to respond_to(:size)
    expect(10).not_to respond_to(:some_method_that_number_does_not_have)
  end

  example "HAVE_ATTRIBUTES" do
    c = Child.new
    c.name = "Luiz"
    expect(c).to have_attributes(name: "Luiz")
    expect(c).to have_attributes(name: starting_with("L"))
  end
end
