class Input
  def self.check_input(input)
    case input
    when 0
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end
end
