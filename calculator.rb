require 'pry'
require 'colorize'

# Constant

# @operators = ['+', '-', '*', '/']

# Defalut display when the

def start
  puts "Welcome to the Ruby Calculator".colorize(:yellow)
  puts "What is the first number?"
  number_1 = gets.to_f
  puts "What is the operator?"
  operator = gets.strip
  puts "What is the second number?"
  number_2 = gets.to_f
  calculator(number_1, number_2, operator)
end

def calculator(left, right, operator)
  case operator
    when '+'
      print "#{left} + #{right} = "
      answer = left + right
      puts left + right
    when '-'
      print "#{left} - #{right} = "
      answer = left - right
      puts left - right
    when '*'
      print "#{left} * #{right} = "
      answer = left * right
      puts left * right
    when '/'
      print "#{left} / #{right} = "
      if right == 0
        puts "0"
        answer = 0
      else
        answer = left / right
        puts left / right
      end
    else
      puts 'Operator #{operator} is not supported. I only support: + - * / . Please try again.'
  end
  second_pass(answer)
end

def second_pass(answer)
  puts "What is the operator?"
  operator = gets.strip
  puts "What is the second number?"
  number_2 = gets.to_i
  calculator(answer, number_2, operator)
end

start
