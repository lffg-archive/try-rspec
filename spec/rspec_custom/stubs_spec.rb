class Test; end

describe "Stubs" do
  let(:instance) { Test.new }

  example "normal stub" do
    allow(instance).to receive(:method) # Default one.
    allow(instance).to receive(:method).with(5).and_return("Received 5")

    expect(instance.method(5)).to eq("Received 5")
    expect(instance.method(6)).not_to eq("Received 5")
  end

  example "block stubs" do
    allow(instance).to receive(:method) do |given_arg|
      "Received #{given_arg}"
    end

    expect(instance.method(5)).to eq("Received 5")
  end
end
