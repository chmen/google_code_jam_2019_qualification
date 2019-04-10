require 'prime'

describe 'greates common devisor' do
  it 'return integer greatest common devisor' do
    expect(greatest_common_devisor(217, 1891)).to eq 31
  end
  context 'big data' do
    it 'return integer greatest common devisor' do
      expect(greatest_common_devisor(375469, 1651121)).to eq 1571
    end
  end
  context 'when oreder is wrong' do
    it 'return integer greatest common devisor' do
      expect(greatest_common_devisor(1891, 217)).to eq 31
    end
  end
end

describe 'prime_array' do
  it 'return array of greates common devisor' do
    product_array = [217, 1891, 4819, 2291, 2987]
    expect(prime_array(product_array)).to eq [31, 61, 79, 29]
  end

  context 'with real data' do
    it 'return array of greates common devisor' do
      product_array = [217, 1891, 4819, 2291, 2987, 3811, 1739, 2491, 4717, 445, 65, 1079, 8383, 5353, 901, 187, 649, 1003, 697, 3239, 7663, 291, 123, 779, 1007, 3551, 1943, 2117, 1679, 989, 3053]
      expect(prime_array(product_array)).to eq [31, 61, 79, 29, 103, 37, 47, 53, 89, 5, 13, 83, 101, 53, 17, 11, 59, 17, 41, 79, 97, 3, 41, 19, 53, 67, 29, 73, 23, 43]
    end
  end
end

describe 'solve' do
  it 'return encrypted message' do
    panagram_stirng = '217 1891 4819 2291 2987 3811 1739 2491 4717 445 65 1079 8383 5353 901 187 649 1003 697 3239 7663 291 123 779 1007 3551 1943 2117 1679 989 3053'
    expect(solve(panagram_stirng)).to eq 'CJQUIZKNOWBEVYOFDPFLUXALGORITHMS'
  end

  context 'with cuted panagram' do
  	it 'return encrypted message' do
      panagram_stirng = '3292937 175597 18779 50429 375469 1651121 2102 3722 2376497 611683 489059 2328901 3150061 829981 421301 76409 38477 291931 730241 959821 1664197 3057407 4267589 4729181 5335543'
      expect(solve(panagram_stirng)).to eq 'SUBDERMATOGLYPHICFJKNQVWXZ'
    end
  end
end

# describe 'generate alphabet' do
#   it 'return proper voabulary a = smalles, z = biggest' do
#     numbers = (1..26).to_a.shuffle

#     expect(generate_alphabet(numbers)).to eq {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, "k"=>11, "l"=>12, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25, "z"=>26}
#   end
# end