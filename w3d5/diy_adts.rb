class Stack
    def initialize
        # create ivar to store stack here!
        @ivar = Array.new(0)
    end

    def push(el)
        # adds an element to the stack
        @ivar << el
    end

    def pop
        # removes one element from the stack
        @ivar.pop
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @ivar[-1]
    end
end

class Queue
    def initialize
        @ivar = Array.new(0)
    end

    def enqueue(el)
        @ivar << el
    end

    def dequeue
        @ivar.shift
    end

    def peek
        @ivar[0]
    end
end

class Map
    def initialize
        @my_map = Array.new(0)
    end

    def key?(key)
        @my_map.any? {|pair| pair.first == key}
    end

    def set(key,value)
        if key?(key)
            (0...@my_map.size).each do |index|
                @my_map[index].last = value if @my_map[index].first == key
            end
        else
            @my_map << [key,value]
        end
    end

    def get(key)
        if key?(key)
            @my_map.each do |pair| 
                return pair.last if pair.first == key 
            end
        else
            raise "Key doesn't exist"
        end
    end

    def delete(key)
        if key?(key)
            @my_map.each do |pair| 
                if pair.first == key 
                    @my_map.delete(pair) 
                    break
                end
            end
        else
            raise "Key doesn't exist"
        end
    end

    def show
        p @my_map
    end
end