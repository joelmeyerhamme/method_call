class MethodCall

  def initialize(method, *args, &block)
    self.method = method
    self.args = args
    self.block = block
  end

  def to_proc
    Proc.new { |obj, *other| obj.send(method, *(other + args), &block) }
  end

  def inspect
    ":#{method}[#{args_inspect}]#{block_inspect}"
  end

private

  attr_accessor :method, :args, :block

  def block_inspect
    block ? "{...}" : nil
  end

  def args_inspect
    args.map(&:inspect).join(', ')
  end

end

class Symbol

  def [](*args, &block)
    MethodCall.new(self, *args, &block)
  end

end
