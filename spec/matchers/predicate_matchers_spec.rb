describe "Predicate Matchers" do
  # Some Ruby objects have some predicate methods. `Integer`, for example, has a
  # lot of them, such as `.even?`, `.odd?`, and more. This kind of method, which
  # has its name ending with `?` always returns a boolean, and are called
  # "predicate methods". RSpec convert those predicate methods to matchers, by
  # removing the `?` from its name and prefixing it with `be_`. For example:
  example "BE_EVEN" do
    expect(2.even?).to be true
    expect(2).to be_even
  end
end
