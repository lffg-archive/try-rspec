class Counter
  def initialize(current)
    @n = current
  end

  def current
    @n
  end

  def increment
    @n += 1
  end
end
