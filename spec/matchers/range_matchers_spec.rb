describe "Range Matchers" do
  example "COVER" do
    expect(1..3).to cover(1)
    expect(1..3).to cover(1, 2, 3)
  end
end
