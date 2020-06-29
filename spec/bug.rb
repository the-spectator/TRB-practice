require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"

  # Activate the gem you are reporting the issue against.
  gem 'trailblazer', '~> 2.1'
  gem 'rspec'
end

require "trailblazer"
require "trailblazer/operation"

class HelloOperation < Trailblazer::Operation
  step :hello_world

  def hello_world(ctx, **)
    ctx[:result] = "Hello World!"
  end
end

require 'rspec'

describe HelloOperation do
  it "returns hello world" do
    result = described_class.()

    expect(result.success?).to eq(true)
    expect(result[:result]).to eq("Hello World!")
  end
end
