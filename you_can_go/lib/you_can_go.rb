def hello_world
  "Hello world"
end

def read_from_input
  STDIN.read.split("\n").drop(1).each_slice(2).with_index do |line_pair, index|
    
  puts solve(line_pair, index + 1)
  end  
end

def solve(line_pair, case_number)
  size = line_pair[0]
  steps = line_pair[1]

  print_case_solution(case_number, mirror_steps(steps))
end

def print_case_solution(case_number, steps)
  "Case ##{case_number}: #{steps}"
end

def mirror_steps(steps)
  mirrored_steps = steps.gsub(/[SE]/, 'E' => 'S', 'S' => 'E')
end

read_from_input
