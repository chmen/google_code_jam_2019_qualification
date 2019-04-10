def read_from_input
  STDIN.read.split("\n").each_with_index do |line, i|
    next if i == 0
    puts solve_case(line, i)
  end  
end

def number_of_cases
  STDIN.read.split("\n").each do |line|
    @number_of_cases = line
    break
  end  
end

def solve_case(total_check, index)
  total_check_array = total_check.split('')
  first_check = generate_first_check_array(total_check_array).join.to_i

  second_check = total_check.to_i - first_check
  
  print_case_solution(index, first_check, second_check)
end

def print_case_solution(index, first_check, second_check)
  "Case ##{index}: #{first_check} #{second_check}"
end

def generate_first_check_array(total_check_array)
  first_check_ar = []
  total_check_array.each do |st_digit|
    if st_digit == "4"
      first_check_ar << '1'
    else 
      first_check_ar << '0'
    end
  end
  first_check_ar
end

read_from_input