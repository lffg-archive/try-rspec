require "counter"

describe "Change Matcher" do
  let(:counter) { Counter.new(0) }

  it "should CHANGE" do
    expect { counter.increment }.to change { counter.current }
  end

  it "should CHANGE by one" do
    expect { counter.increment }.to change { counter.current }.by(1)
  end

  it "should CHANGE from zero to one" do
    expect { counter.increment }.to change { counter.current }.from(0).to(1)
  end
end
