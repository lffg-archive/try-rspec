describe "Comparation Matchers" do
  it "should compare with >, <, >= or <=" do
    expect(5).to be > 4
    expect(5).not_to be > 6

    expect(6).to be < 7
    expect(6).not_to be < 5

    expect(8).to be <= 8
    expect(9).to be >= 9
  end

  it "should BE_BETWEEN" do
    expect(5).to be_between(4, 6)
    expect(5).to be_between(5, 5)
    expect(5).to be_between(5, 5).inclusive
    expect(5).not_to be_between(5, 5).exclusive
  end

  it "should MATCH regex" do
    expect("Luiz").to match(/^Luiz$/)
    expect("Luiz Felipe").not_to match(/^Luiz$/)
  end

  it "should START_WITH or END_WITH" do
    expect("Luiz").to start_with("L")
    expect("Luiz").not_to start_with("l")

    expect("Luiz").to end_with("z")
    expect("Luiz").not_to end_with("Z")
  end
end
