describe "Double" do
  let(:subj) { instance_double("Subject") }

  example "user double" do
    allow(subj).to receive(:foo).and_return(5)
    expect(subj.foo).to eq(5)
  end

  example "receive_messages in double (or any kind of stub)" do
    allow(subj).to receive_messages(name: "Luiz", age: 17)

    expect(subj.name).to eq("Luiz")
    expect(subj.age).to eq(17)
  end

  example "as_null_object double" do
    user = instance_double("User").as_null_object
    user.abc # Will not fail the test.
  end
end
