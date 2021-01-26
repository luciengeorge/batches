def calculate_result(num1, num2, op)
  if op == '+'
    result = num1 + num2
  elsif op == '-'
    result = num1 - num2
  elsif op == '*'
    result = num1 * num2
  elsif op == '/'
    result = num1.to_f / num2
  else
    result = nil
  end
  return result
end
