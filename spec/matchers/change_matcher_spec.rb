require "counter"

describe "Change Matcher" do
  let(:counter) { Counter.new(0) }

  example "CHANGE" do
    expect { counter.increment }.to(change(counter, :current))
  end

  example "CHANGE by one" do
    expect { counter.increment }.to change(counter, :current).by(1)
  end

  example "CHANGE from zero to one" do
    expect { counter.increment }.to change(counter, :current).from(0).to(1)
  end
end
