require "trailblazer"
require "trailblazer/operation"

class HelloOperation < Trailblazer::Operation
  step :hello_world

  def hello_world(ctx, **)
    ctx[:result] = "Hello World!"
  end
end
