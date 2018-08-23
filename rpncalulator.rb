class Rpncalculator
 attr_reader :operators

 def initialize(operators=nil)
   @operators = operators
 end

 def evaluate
   print '> '
   input = gets.strip
        	stack = []
   while input!= 'q'
     if input.split(" ").length > 1
        stack = input.split(" ").inject([]) do |array, i|    
	      if i =~ /\d+/ 
	        stack << i.to_i
	      else
	        b = stack.pop(2)
	        stack << b[0].send(i, b[1])
	      end
   		end
        p stack.pop
        print '> '
        input = gets.strip
     else
        if input =~ /\d/
          stack << input.to_f
        elsif self.operators.include? input
          operands = stack.pop(2)
          result = operands.reduce(input.to_sym)
          puts result
          (result.to_i == result) ? (puts result.to_i) : (puts "%0.1f" % result)
          stack.push(result)
        else 
          puts "Invalid input"
        end
        print '> '
        input = gets.strip
     end
   end
 end
@rpn = Rpncalculator.new(["+","-","*","/"])
@rpn.evaluate
end
