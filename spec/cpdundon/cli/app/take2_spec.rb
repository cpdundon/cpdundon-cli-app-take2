require "spec_helper"

RSpec.describe Cpdundon::Cli::App::Take2 do
  it "has a version number" do
    expect(Cpdundon::Cli::App::Take2::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
