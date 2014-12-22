require 'inject'

describe Array do

  context 'with a block' do
  
    it 'can add numbers' do
      expect([1, 2, 3, 4].inject{|memo, num| memo + num}).to eq 10
      expect([1, 2, 3, 4].jin_inject{|memo, num| memo + num}).to eq 10
    end

    it 'can minus numbers'do
      expect([1, 2, 3, 4].inject{|memo, num| memo - num}).to eq -8
      expect([1, 2, 3, 4].jin_inject{|memo, num| memo - num}).to eq -8
    end

    it 'can multiply numbers' do
      expect([1, 2, 3, 4].inject{|memo, num| memo * num}).to eq 24
      expect([1, 2, 3, 4].jin_inject{|memo, num| memo * num}).to eq 24
    end
  end

  context 'with an argument and block' do

    it 'can add numbers with a starting point' do
      expect([1, 2, 3, 4].inject(10){|memo, num| memo + num}).to eq 20
      expect([1, 2, 3, 4].jin_inject(10){|memo, num| memo + num}).to eq 20
    end
  end

  context 'with a symbol' do 

    it 'can add numbers together' do
      expect([1, 2, 3, 4].inject(:+)).to eq 10
      expect([1, 2, 3, 4].jin_inject(:+)).to eq 10
    end
  end


  context 'with a symbol argument' do

    it 'can add with a starting point and a symbol' do
      expect([1, 2, 3, 4].inject(10, :+)).to eq 20
      expect([1, 2, 3, 4].jin_inject(10, :+)).to eq 20
    end
  end
end
