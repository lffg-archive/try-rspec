describe "Equality Matchers" do
  a = "1"
  b = "1"

  example "two strings should not be EQUAL / BE" do
    expect(a).not_to equal(b)
    expect(a).not_to be(b)
  end

  example "two strings should be EQL / EQ" do
    expect(a).to eql(b)
    expect(a).to eq(b)
  end
end
