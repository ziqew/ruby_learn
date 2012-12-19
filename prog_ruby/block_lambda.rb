#lambda

class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(lambda { |n| n ** 2 })

puts array.inspect


def proc_return
  Proc.new { return "Proc.new"}.call
  return "proc_return method finished"
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts proc_return
puts lambda_return

=begin
def generic_return(code)
  code.call
  return "generic_return method finished"
end

=end

puts generic_return(Proc.new { return "Proc.new" })
puts generic_return(lambda { return "lambda" })

def generic_return(code)
  one, two    = 1, 2
  three, four = code.call(one, two)
  return "Give me a #{three} and a #{four}"
end

puts generic_return(lambda { |x, y| return x + 2, y + 2 })

puts generic_return(Proc.new { |x, y| return x + 2, y + 2 })

puts generic_return(Proc.new { |x, y| x + 2; y + 2 })

puts generic_return(Proc.new { |x, y| [x + 2, y + 2] })