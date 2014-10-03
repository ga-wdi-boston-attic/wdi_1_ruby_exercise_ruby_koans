require 'pry'

def score(dice)
  score = 0
  dice.empty? ? nil : score
  count3 = false
  triple_num = 0
  dice.each { |i| 
    dice.count(i) >= 3 ? count3 = true : break
    count3 ? triple_num = i : break
  }
  if count3
    if triple_num == 1
      score += 1000
    else
      score += triple_num * 100
    end
    3.times {dice.slice!(dice.index(triple_num))}
  end
  dice.each{ |x|
    x == 1 ? score += 100 : score
    x == 5 ? score += 50 : score
  }
  puts score
end


score([])
score([5]) #=> should be 50
score([1]) # assert_equal 100, 
score([1,5,5,1]) # assert_equal 300, 
score([2,3,4,6]) # assert_equal 0, 
score([1,1,1]) # assert_equal 1000, 
score([2,2,2]) # assert_equal 200, 
score([3,3,3]) # assert_equal 300, 
score([4,4,4]) # assert_equal 400, 
score([5,5,5]) # assert_equal 500, 
score([6,6,6]) # assert_equal 600, 
score([2,5,2,2,3]) # assert_equal 250, 
score([5,5,5,5]) # assert_equal 550, 
score([1,1,1,1]) # assert_equal 1100, 
score([1,1,1,1,1]) # assert_equal 1200, 
score([1,1,1,5,1]) # assert_equal 1150, 

