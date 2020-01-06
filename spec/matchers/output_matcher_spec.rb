describe "Output Matcher" do
  it "should OUTPUT to stdout" do
    expect { print "Luiz" }.to output.to_stdout
    expect { print "Luiz" }.to output("Luiz").to_stdout
    expect { puts "Luiz" }.to output(/Luiz/).to_stdout
  end

  it "should OUTPUT to stderr" do
    expect { warn "Ooops!" }.to output.to_stderr
    expect { warn "Ooops!" }.to output(/Ooops!/).to_stderr
  end
end
