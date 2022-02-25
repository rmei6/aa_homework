def sluggish_octopus(fish)
    longest_fish = ""
    (0...fish.length).each do |i|
        longest = true
        (0...fish.length).each do |j|
            longest = false if fish[i].length < fish[j].length
        end
        longest_fish = fish[i] if longest
    end
    longest_fish
end

def dominant_octopus(fish)
    fish.sort{|fish1,fish2| fish1.length <=> fish2.length}.last
end

def clever_octopus(fish)
    longest_fish = ""
    fish.each do 
        |ele| longest_fish = ele if longest_fish.length < ele.length 
    end
    longest_fish
end

def slow_dance(direction,tiles_array)
    tiles_array.each_with_index do |tile,i| 
        return i if tile == direction 
    end
end

def fast_dance(direction,tiles_hash)
    tiles_hash[direction]
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7}

sluggish_octopus(fish)
dominant_octopus(fish)
clever_octopus(fish)

slow_dance("up",tiles_array)
slow_dance("right-down",tiles_array)

fast_dance("up",tiles_hash)
fast_dance("right-down",tiles_hash)