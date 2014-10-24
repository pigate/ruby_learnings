def some(one)
  puts one
end

def some(one, two) #totally overrode. cannot find declarataion from above
  puts one, two
end

#some(1) #error 
some(1, 2)
