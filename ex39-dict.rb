module Dict
  #Dict: array of buckets
  #buckets initial []
  #buckets contain multiple pairings
  def Dict.new(num_buckets = 256)
    aDict = []
    (0...num_buckets).each do |i|
      aDict.push([])
    end
    return aDict
  end
  def Dict.hash_key(aDict, key)
    return key.hash % aDict.length
  end
  def Dict.get_bucket(aDict, key)
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id] #returns ref to whole bucket. 
  end
  def Dict.get_slot(aDict, key, default=nil)
     #returns index, key, and value of a slot
     bucket = Dict.get_bucket(aDict, key) #value
     bucket.each_with_index do |kv, i| #index goes in i. kv gets [key, value] pair
      k, v = kv #unpack kv = [k, v]
      if key == k
        return i, k, v
      end
     end
     return -1, key, default
  end
  def Dict.get(aDict, key, default=nil)
    #Gets value in bucket for given key
    i, k, v = Dict.get_slot(aDict, key) #don't have to spec last arg
    return v
  end
  def Dict.set(aDict, key, value)
      bucket = Dict.get_bucket(aDict, key)
    #check if already set
    i, k, v = Dict.get_slot(aDict, key)
    if i >= 0 #found. set it
      bucket[i] = [key, value]
    else #need to set
      bucket.push([key, value])
    end
  end
  def Dict.delete(aDict, key)
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)
    #search for entry
    if i != -1
      bucket.delete_at(i)
    end
  end
  def Dict.list(aDict)
    #each bucket
    aDict.each do |bucket|
      if bucket #not nil
        bucket.each {|k, v| puts k, v}
      end
    end
  end
end
