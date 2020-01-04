require "nicks_splitter"

describe NicksSplitter do
  it "should have a separator getter and default to `/`" do
    expect(subject.separator).to eq("/")
  end

  it "should split the given nicks" do
    splitted = subject.split("a / b / c")
    expect(splitted).to eq(%w[a b c])
  end

  context "using a different separator" do
    subject { described_class.new(".") }

    it "should use the different separator" do
      expect(subject.separator).to eq(".")
    end

    it "should split the given nicks" do
      splitted = subject.split("x. y .z")
      expect(splitted).to eq(%w[x y z])
    end
  end
end
