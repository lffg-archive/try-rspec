# Here we create a negated matcher called `not_include`, which is the oposite of
# the `include` matcher. It is possible to assign any name to the negated
# matcher. In this example, `not_include` was used, as it's the best name for
# the situation.
RSpec::Matchers.define_negated_matcher :not_include, :include

describe "Negated Matchers" do
  example "not_include something" do
    expect([1, 2, 3]).to not_include(4)
  end
end
