describe "Array Matchers" do
  it "should INCLUDE" do
    expect([1, 2, 3]).to include(1)
    expect([1, 2, 3]).to include(1, 3)

    # Syntax trick:
    expect([1, 2, 3]).to include(*[1, 3])
  end

  it "should MATCH_ARRAY // CONTAIN_EXACTLY" do
    expect([1, 2, 3]).to match_array([1, 2, 3])
    expect([1, 2, 3]).to contain_exactly(1, 2, 3)
  end
end
