require 'pry'
# create a list of methods that represents daily activities
my_name = 'YAN HUANG'


def activities_to_do(time = 'morning', mood_level = 5)
  if time == 'morning'
    if mood_level < 5 
      puts "I will run #{mood_level * 0.5} miles today"
     elsif mood_level >= 5 && mood_level < 7
     puts "I will run #{mood_level * 1} miles today"
    elsif mood_level >= 7
      puts "I will run #{mood_level * 1.2} miles today"
    end
  elsif time == 'afternoon'
     if mood_level < 5
       puts "I will swim #{(mood_level * 0.2).round} miles today"
       elsif mood_level >= 5 && mood_level < 7
       puts "I will swim #{(mood_level * 0.4).round} miles today"
       elsif mood_level >= 7
       puts "I will swim #{(mood_level * 0.6).round} miles today"
     end
  elsif time == "night"
      if mood_level < 5
        puts "I will go to bed and sleep"
      elsif mood_level >= 5 && mood_level < 7
      puts "I will dance for #{mood_level * 4} minutes today"
      elsif mood_level >=7 
      puts "I will dance for #{mood_level * 5} minutes today"
    end
end
  
end

def print_routing(day)
    wake_up_time(day)
    bedtime(day)
    go_to_work(day)
    
end

def wake_up_time(day)
    if day.downcase.start_with?'s'
      p 'wake up at 10AM'
    else 
      p 'wake up at 6AM'
    end
end

def go_to_work(day)
    if !day.downcase.start_with?'s'
      p 'Go to work!'
      true
    else
      p 'No work today! Yay'
      false
    end
end

def bedtime(day)
  if !day.downcase.start_with?'s'
    p 'go bed early'
  else 
    p 'stay up late'
  end
end

binding.pry
puts 'goodbye'