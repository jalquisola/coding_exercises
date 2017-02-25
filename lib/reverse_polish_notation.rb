=begin
Reverse Polish Notation:
  - evaluate the value of an arithmetic expression in Reverse Polish Notation.

Valid Operators: +, -, *, /
Each operand may be integer of another expression

For example:
  ['2', '1', '+', '3', '*'] -> ((2+1)*3)    -> 9
  ['4', '13', '5, '/', '+'] -> (4 + (13/5)) -> 6

Solution: Create a stack.

Loop through each element in the given array.
When it is a number, push it to the stack.
When it is an operator, pop 2 numbers from the stack, do the calculation and push back result to the stack.
=end
class ReversePolishNotation
  def self.evaluate(arr)
    operators = "+-*/"
    stack = []

    arr.each do |token|
      if !operators.include?(token)
        stack.push(token)
      else
        a = stack.pop.to_i
        b = stack.pop.to_i
        case operators.index(token)
        when 0
          stack.push(a + b)
        when 1
          stack.push(b - a)
        when 2
          stack.push(a * b)
        when 3
          stack.push(b / a)
        end
      end
    end
    stack.pop
  end
end
