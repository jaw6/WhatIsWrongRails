require 'test_helper'

class Foo
  def bar; 'bar'; end
end

describe Foo do
  it "should have a bar" do
    assert { Foo.new.bar == 'bar' }
  end
end
