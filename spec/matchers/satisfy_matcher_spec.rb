describe "Satisfy Matcher" do
  example "SATISFY the given block" do
    expect(2).to satisfy do |val|
      val == 1 + 1
    end
  end
end
