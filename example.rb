array = [['A', 'a'], ['B', 'b'], ['C', 'c']]

hash = array.inject({}) do |memo, values|
  memo[values.first] = values.last
  memo
end

hash