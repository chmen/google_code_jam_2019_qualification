require 'foregon'

# describe '.Hello world' do
#   it 'return hello world' do
      
#     expect(hello_world).to eq 'Hello world'
#   end
# end

describe 'print_case_solution' do
  it 'return case line' do
    expect(print_case_solution(3, 667, 3777)).to eq 'Case #3: 667 3777'
  end
end

describe 'solve case' do
  it 'return case solution' do
    line = '4'
    index = 1
    
    expect(solve_case(line, index)).to eq 'Case #1: 1 3'
  end

  context '#3' do
    it 'it return proper solution' do
      line = '4444'
      index = 3

      expect(solve_case(line, index)).to eq 'Case #3: 1111 3333'
    end
  end
end

describe 'generate first check' do
  it 'return array one nil with proper order' do
    total_check_array = ['4', '4', '4', '4']
    
    expect(generate_first_check_array(total_check_array)).to eq ['1', '1', '1', '1']
  end

  context 'with 4 and other numbers' do
    it 'return array one nil with proper order' do
      total_check_array = ['1', '2', '3', '4']

      expect(generate_first_check_array(total_check_array)).to eq ['0', '0', '0', '1']
    end
  end
end
