def score(dice)
  result = 0
  
  #First, looks for triplets, take score, and remove from array
  possible = [1, 2, 3, 4, 5, 6]
  possible.each do |item|
    if dice.count(item) >= 3
      if item == 1
        result += 1000
      else
        result += (item * 100)
      end
      dice.delete_at(dice.index(item))
      dice.delete_at(dice.index(item))
      dice.delete_at(dice.index(item))
    end
  end

  #Then, take score of remaining individual numbers
  dice.each do |item|
    if item == 1
      result += 100
    elsif item == 5
      result += 50
    else
    end
  end

  puts result
  return result
  
end