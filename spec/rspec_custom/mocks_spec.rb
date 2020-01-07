# Difference between `expect().to receive` and `expect().to have_received`.
#
# `receive` will pass only if the method is received AFTER the expectation.
# `have_received` will pass only if the method was received BEFORE the expectation.

describe "Mocks" do
  let(:subj) { instance_double("Subject") }

  example "basic mock" do
    allow(subj).to receive(:foo)

    subj.foo
    expect(subj).to have_received(:foo)
  end

  example "mock that requires an argument (using `with`)" do
    allow(subj).to receive(:foo).with(any_args)

    subj.foo(5)
    expect(subj).to have_received(:foo).with(5)
  end

  example "mock that expects some return value" do
    allow(subj).to receive(:foo).with(no_args).and_return(:val)

    expect(subj).to receive(:foo).and_return(:val)
    subj.foo
  end

  example "received two messages" do
    allow(subj).to receive(:foo)

    2.times { subj.foo }
    expect(subj).to have_received(:foo).twice # There is also `once`.
    expect(subj).to have_received(:foo).exactly(2).times
  end

  example "received at least three messages" do
    allow(subj).to receive(:foo)

    4.times { subj.foo }
    expect(subj).to have_received(:foo).at_least(:once)
    expect(subj).to have_received(:foo).at_least(:twice)
    expect(subj).to have_received(:foo).at_least(3).times # ...
    expect(subj).to have_received(:foo).exactly(4).times
  end
end
