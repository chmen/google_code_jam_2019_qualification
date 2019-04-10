require 'you_can_go'
describe 'hello world' do
  it 'test' do
    expect(hello_world).to eq 'Hello world'
  end
end

describe 'print_case_solution' do
  it 'print result in proper format' do
    expect(print_case_solution(2, 'SEEESSES')).to eq 'Case #2: SEEESSES'
  end
end

describe 'mirror_steps' do
  context 'elementary input' do 
    it 'create string of mirrored steps' do
      expect(mirror_steps('S')).to eq 'E'
    end
  end
  context 'more complicated input' do
    it 'create string of mirrored steps' do
      expect(mirror_steps('SEEESSES')).to eq 'ESSSEESE'
    end
  end
end