# Octopus Problems
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time.
#  Do this by comparing all fish lengths to all other fish lengths


def quadratic_biggest_fish(fishes)
    fishes.each_with_index do |fish1, i_1| 
      max_length = true    
      
      fishes.each_with_index do |fish2, i2|
        next if i_1 == i2
        max_length = false if fish2.length > fish1.length
      end
      
      return fish1 if max_length
    end
  
  end

#   Dominant Octopus
# Find the longest fish in O(n log n) time.
def nlogn_biggest_fish(fishes)
    # sort the array longest to shortest
    prc = Proc.new { |x, y| y.length <=> x.length }
    #return the first element
    fishes.merge_sort(&prc)[0]
  end


class Array
   
    def merge_sort(&prc)
      prc ||= Proc.new { |x, y| x <=> y }
  
      return self if count <= 1    #self = Array  0(1)
  
      midpoint = count / 2
      sorted_left = self.take(midpoint).merge_sort(&prc) #o(1)
      sorted_right = self.drop(midpoint).merge_sort(&prc) #o(1)
  
      Array.merge(sorted_left, sorted_right, &prc)  #o(1)
    end
  
    private
    def self.merge(left, right, &prc)  #self here class mathod 
      merged = []
  
      until left.empty? || right.empty? #o(n)
        case prc.call(left.first, right.first)
        when -1
          merged << left.shift #o(n)
        when 0
          merged << left.shift # o(n)
        when 1
          merged << right.shift # o(n)
        end
      end
  
      merged.concat(left)
      merged.concat(right)
  
      merged
    end
  end


#   Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest 
# fish that you have found so far while stepping through the array only once.

# linear search
def linear_biggest_fish(fishes)
    #hold the biggest fish
    biggest_fish = fishes.first
  
    fishes.each do |fish|
      if fish.length > biggest_fish.length
        #update the biggest fish
        biggest_fish = fish
      end
    end
  
    biggest_fish
  
  end
  
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


  def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, index|
      return index if tile == direction
    end
  end
  
  # constant octopus dance
  #use a hash for constant lookup
  tiles_hash = {
      "up" => 0,
      "right-up" => 1,
      "right"=> 2,
      "right-down" => 3,
      "down" => 4,
      "left-down" => 5,
      "left" => 6,
      "left-up" => 7
  }
  
  def fast_dance(direction, tiles_hash)
    tiles_hash[direction]
  end


  

