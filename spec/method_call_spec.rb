require './spec_helper'

describe MethodCall do
  it "should return method call" do
    expect([[1,2],[2,3]].map(&:reduce[:+])).to eq([3,5])
  end
end
