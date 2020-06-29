require_relative './spec_helper'
require 'hello'

describe HelloOperation do
  it "returns hello world" do
    result = described_class.()

    expect(result.success?).to eq(true)
    expect(result[:result]).to eq("Hello World!")
  end
end
