describe "Boolean Matchers" do
  example "BE true" do
    expect(true).to be(true)
  end

  example "BE false" do
    expect(false).to be(false)
  end

  example "BE_TRUTHY" do
    expect(["Hello", 0, 1, true]).to all be_truthy
  end

  example "BE_FALSEY" do
    expect([false, nil]).to all be_falsey
  end

  example "BE nil // should BE_NIL" do
    expect(nil).to be(nil)
    expect(nil).to be_nil
  end
end
