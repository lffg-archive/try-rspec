describe "Satisfy Matcher" do
  it "should SATISFY the given block" do
    expect(2).to satisfy do |val|
      val % 2 == 0
    end
  end
end
