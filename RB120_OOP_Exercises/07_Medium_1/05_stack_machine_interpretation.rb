class MinilangError < StandardError; end
class InvalidTokenError < MinilangError; end
class StackEmptyError < MinilangError; end

class Minilang
  PROGRAMS = %w(print push pop add sub mult div mod pop)

  def initialize(commands)
    @commands = commands.downcase.split
    @register = 0
    @stack = []
  end

  def eval
    commands.each do |command| 
      validate_command(command)
      if number?(command)
        self.register = command.to_i
      else
        send(command)
      end
    end
    rescue MinilangError => error
      puts error.message
  end

  private

  attr_accessor :register, :stack
  attr_reader :commands

  def print
    puts register
  end

  def push
    stack << register
  end

  def pop
    validate_stack
    self.register = stack.pop
  end

  def add
    self.register += pop
  end

  def sub
    self.register -= pop
  end

  def mult
    self.register *= pop
  end

  def div
    self.register /= pop
  end

  def mod
    self.register %= pop
  end

  def number?(input)
    input =~ /\A[-+]?\d+\z/
  end

  def validate_command(command)
    raise InvalidTokenError, "Invalid token: #{command.upcase}" unless PROGRAMS.include?(command) || number?(command)
  end

  def validate_stack
    raise StackEmptyError, "Empty stack!" if stack.empty?
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)