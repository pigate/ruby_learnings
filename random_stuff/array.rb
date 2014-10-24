n = [1, 2, 3]
n.reduce(:-) #-4 =  ((1-2)-3)      #is fold_left
n[-1] = 3

#sort array by some attribute
def solution(array, key)
  array.sort_by {|h| h[key]}
end

def sort_by_last_name(names)
  names.sort_by {|n| n.split.last}
end

key_list = ['hi', 'there']
l = key_list.map {|key| [key, 0]} #returns [['hi', 0], ['there', 0]]
Hash[l] #pulls out first part, defines it to second part
Hash["a", 100, "b", 200] #=> {"a" => 100, "b" => 200 }
Hash[ [ ["a", 100], ["b", 200]] ]
Hash[["a", 100], ["b", 200]]
Hash["a" => 100, "b" => 200]
#solution([:draft, :completed], 0) # should return {draft: 0, completed: 0}
n = [1, 2, 3]
n.each {|num| num*2} #each returns orig array
n.each.map {|num| num*2} == n.map {|num| num*2} #using map returns the processed array

def array_of_keys_to_hash_of_default(keys, default_value)
  Hash[keys.map { |key| [key, default_value]}]
end


=begin
def array_of_keys_to_hash_of_default(keys, default_value)
  res = {}
  keys.each { |key| res[key] = default_value}
end
=end

def get_value_at_index_With_default(items, index, default_value)
  items.fetch(index, default_value)
end
=begin
def get_value_at_index_with_default(items, index, default)
  if (index >= items.length || index < -items.length)
    return default
  else
    return items[index]
  end
end
=end

#return sum of squares of els in array
def sum_of_squares(array)
  array.each.map{|num total += num*num}.reduce(:+) #is like fold_left. reduce works on array or collection of enumerables
end

def sum_of_squares2(array)
  array.reduce { |s, n| s+=n**2 }
end
=begin
def sum_of_squares(array)
  total = 0
  array.each.map {|num| total += num*num}
  #same as array.map ...
  return total
end
=end
