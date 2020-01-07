RSpec::Matchers.define :be_custom_equal do |expected|
  match do |actual|
    expected === actual
  end

  failure_message do |actual|
    "What a shame! I was expecting #{actual} to be #{expected}! :("
  end
end

describe "Custom Matcher" do
  it "should be_custom_equal" do
    expect(1).to be_custom_equal(1)
    expect(2).not_to be_custom_equal(1)

    # Test failure message:
    # expect(1).to be_custom_equal(2)
  end
end
