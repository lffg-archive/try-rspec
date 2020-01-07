require "nicks_splitter"

describe NicksSplitter do
  subject(:splitter) { described_class.new }

  it "has a separator getter and default to `/`" do
    expect(splitter.separator).to eq("/")
  end

  it "splits the given nicks" do
    splitted = splitter.split("a / b / c")
    expect(splitted).to eq(%w[a b c])
  end

  context "when using a different separator" do
    splitter { described_class.new(".") }

    it "uses the different separator" do
      expect(splitter.separator).to eq(".")
    end

    it "splits the given nicks" do
      splitted = splitter.split("x. y .z")
      expect(splitted).to eq(%w[x y z])
    end
  end
end
