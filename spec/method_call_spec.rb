require './spec/spec_helper'

describe MethodCall do
  it 'should return method call' do
    expect([1, 2, 2, 3].map(&:+[1])).to eq([2, 3, 3, 4])
  end

  it 'should be universal' do
    pending 'strange edge case'
    expect([[1, 3],[3, 4]].map(&:reduce[:+])).to eq([4, 7])
  end
end
