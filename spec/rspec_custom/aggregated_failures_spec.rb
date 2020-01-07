describe "Aggregated Failures" do
  it "should aggregate failures (approach #1)" do
    aggregate_failures do
      # expect(1).not_to be(1)
      # expect(2).not_to be(2)
      # expect(3).not_to be(3)
    end
  end

  it "should aggregate failures (approach #2)", :aggregate_failures do
    # expect(1).not_to be(1)
    # expect(2).not_to be(2)
    # expect(3).not_to be(3)
  end
end
