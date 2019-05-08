require "spec_helper"

describe "Sign in" do
  before { goto ENV["SYMBOLIC_URL"] }

  it "successfully signed in" do
    result = do_login
    expect(result).to eq ENV["SYMBOLIC_URL"]
  end

end