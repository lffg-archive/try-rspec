describe "Boolean Matchers" do
  it "should BE true" do
    expect(true).to be(true)
  end

  it "should BE false" do
    expect(false).to be(false)
  end

  it "should BE_TRUTHY" do
    ["Hello", 0, 1, true].each { |val| expect(val).to be_truthy }
  end

  it "should BE_FALSEY" do
    [false, nil].each { |val| expect(val).to be_falsey }
  end

  it "should BE nil // should BE_NIL" do
    expect(nil).to be(nil)
    expect(nil).to be_nil
  end
end
