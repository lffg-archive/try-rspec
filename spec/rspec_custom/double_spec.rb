describe "Double" do
  let(:subj) { double("Subject") }

  example "user double" do
    allow(subj).to receive(:foo).and_return(5)
    expect(subj.foo).to eq(5)
  end

  example "receive_messages in double (or any kind of stub)" do
    allow(subj).to receive_messages(name: "Luiz", age: 17)

    expect(subj.name).to eq("Luiz")
    expect(subj.age).to eq(17)
  end

  example "receive_messsages without "
end
