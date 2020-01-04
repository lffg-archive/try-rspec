class NicksSplitter
  attr_reader :separator

  def initialize(separator = "/")
    @separator = separator
  end

  def split(nicks)
    nicks.split(@separator).map(&:strip)
  end
end
