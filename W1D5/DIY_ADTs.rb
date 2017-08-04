class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(k,v)
    idx = @map.index { |pair| pair[0] == k }
    !idx.nil? ? @map[idx] = [k,v] : @map << [k,v]
  end

  def lookup(k)
    @map.each { |pair| return pair[1] if pair[0] == k }
  end

  def remove(k)
    @map.reject! { |pair| pair[0] == k}
  end

  def show
    deep_dup(@map)
  end

  def deep_dup(map_arr)
    map_arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
