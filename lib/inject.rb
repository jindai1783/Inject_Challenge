class Array

  def jin_inject(memo = nil, symbol = nil, &block)
    if !block
      if symbol
        block = symbol.to_proc
      else
        block = memo.to_proc
        memo = self.shift
      end
    else
      memo = self.shift if !memo
    end
    self.size.times {memo = block.call(memo, self.shift)}
    memo
  end

end