class Parent; end
class Child < Parent; end

parent = Parent.new
child = Child.new

describe "Class Matchers" do
  it "should BE_INSTANCE_OF" do
    expect(parent).to be_instance_of(Parent)
    expect(child).to be_instance_of(Child)
    expect(child).not_to be_instance_of(Parent)
  end

  it "should BE_KIND_OF" do
    expect(parent).to be_kind_of(Parent)
    expect(child).to be_kind_of(Child)
    expect(child).to be_kind_of(Parent)
  end

  it "should BE_A // BE_AN // (alias of be_kind_of)" do
    expect(parent).to be_kind_of(Parent)
    expect(child).to be_kind_of(Child)
    expect(child).to be_kind_of(Parent)
  end

  it "should RESPOND_TO" do
    expect([1, 2, 3]).to respond_to(:size)
    expect(10).not_to respond_to(:some_method_that_number_does_not_have)
  end
end
