  def assert(block, message)
    begin
      if (block)
        puts "Assertion PASSED for #{message}"
      else
        puts "Assertion FAILED for #{message}"
      end
    rescue => e
      puts "Assertion FAILED For #{message} with exception '#{e}'"
    end
  end
