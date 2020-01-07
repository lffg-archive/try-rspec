class Test
  def foo(some_arg); end
end

describe "Stubs" do
  let(:instance) { Test.new }

  example "normal stub" do
    allow(instance).to receive(:foo) # Default one.
    allow(instance).to receive(:foo).with(5).and_return("Received 5")

    expect(instance.foo(5)).to eq("Received 5")
    expect(instance.foo(6)).not_to eq("Received 5")
  end

  example "block stubs" do
    allow(instance).to receive(:foo) do |given_arg|
      "Received #{given_arg}"
    end

    expect(instance.foo(5)).to eq("Received 5")
  end

  example "and_raise stub" do
    allow(instance).to receive(:foo).and_raise("Error")
    expect { instance.foo(5) }.to raise_error("Error")
  end

  example "allow_any_instance_of stub" do
    allow_any_instance_of(Test).to receive(:foo) { |_instance, arg| "Received #{arg}" } # rubocop:disable RSpec/AnyInstance

    [Test.new, Test.new].each_with_index do |_instance, index|
      expect(Test.new.foo(index)).to eq("Received #{index}")
    end
  end
end
