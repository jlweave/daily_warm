array = [52, 39, 1, 6, 39, 52, 1]

def single_count(arg)
  pairs = []
  arg.sort
  arg.each do |pair|
    if arg.count(pair) < 2
      pairs << pair
    end
  end
  p pairs
end

single_count(array)