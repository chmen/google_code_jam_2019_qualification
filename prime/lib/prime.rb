def greatest_common_devisor(a, b)
  if a % b == 0
    b
  else
    greatest_common_devisor(b, a % b)
  end
end


def prime_array(product_array)
  prime_ar = []
  product_array.each_cons(2) do |pair|
    prime_ar << greatest_common_devisor(pair[0], pair[1])
  end
  prime_ar
end

def add_first_and_last(prime_numbers, product_array)
  first_element = product_array.first / prime_numbers.first
  last_element = product_array.last / prime_numbers.last

  prime_numbers.unshift(first_element)
  prime_numbers << last_element
  prime_numbers
end

def generate_alphabet(prime_numbers_array)
  alphabet_prime_numbers = prime_numbers_array.uniq.sort
  alphabet = ('A'..'Z').to_a
  pangram_vocabulary = {}
  alphabet.each_with_index do |letter, index|
    pangram_vocabulary[letter] = alphabet_prime_numbers[index]
  end 
  pangram_vocabulary
end

def get_encripted_message(full_prime_numbers, pangram_vocabulary)
message = ''
  full_prime_numbers.each do |prime_number|
    message << pangram_vocabulary.key(prime_number)
  end
message
end

def print_case_solution(case_number, encrypted_message)
  "Case ##{case_number}: #{encrypted_message}"
end

def solve(line, case_number)
  product_array = line.split(' ').map{|string| string.to_i}
  prime_numbers = prime_array(product_array)
  full_prime_numbers = add_first_and_last(prime_numbers, product_array)
  panagram_vocabulary = generate_alphabet(full_prime_numbers)
  encrypted_message = get_encripted_message(full_prime_numbers, panagram_vocabulary)

  print_case_solution(case_number, encrypted_message)
end

def read_from_input
  STDIN.read.split("\n").drop(1).each_slice(2).with_index do |line_pair, index|
    
  puts solve(line_pair[1], index + 1)
  end  
end

read_from_input