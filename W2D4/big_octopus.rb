# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, idx1|
    max_fish = true
    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_fish = false if fish2.length > fish1.length
    end
    return fish1 if max_fish
  end
end

class Array
  #dominant_octopus
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if self.length <= 1

    middle = self.length/2
    left = self.take(middle).merge_sort(&prc)
    right = self.drop(middle).merge_sort(&prc)

    self.merge(left, right, &prc)
  end

  def merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1 || 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end
    merged + left + right
  end

end

#clever octopus
def clever_octopus(fishes)
  prc = Proc.new { |x, y| y.length <=> x.length }
  fishes.merge_sort(&prc)[0]
end
