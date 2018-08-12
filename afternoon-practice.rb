def assign_numbers(employees_arr)
  
  counter = 001
  
  employees_arr.each do |element|
    puts "#{element} is employee number ACME-#{counter}"
    counter += 1
    end
    
  end
  
  