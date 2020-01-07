describe "Array Matchers" do
  example "INCLUDE" do
    expect([1, 2, 3]).to include(1)
    expect([1, 2, 3]).to include(1, 3)

    # Syntax trick:
    expect([1, 2, 3]).to include(1, 3)
  end

  example "MATCH_ARRAY // CONTAIN_EXACTLY" do
    expect([1, 2, 3]).to match_array([1, 2, 3])
    expect([1, 2, 3]).to contain_exactly(1, 2, 3)
  end

  example "match ALL elements with another matcher" do
    expect([1, 2, 3]).to all be_instance_of(Integer)

    # Composition is also allowed in RSpec
    expect([1, 2, 3]).to all eq(1).or eq(2).or eq(3)
  end
end
