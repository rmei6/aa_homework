class LRUCache
    def initialize(size)
        @cache = []
        @size = size
    end

    def count
      # returns number of elements currently in cache
      cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if cache.include?(el)
        cache.delete(el)
      elsif size <= count
        cache.shift
      end
      cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      p cache
    end

    private
    # helper methods go here!
    attr_reader :cache, :size

  end