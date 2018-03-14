def find_sequences(array)
  sequence = ""
  i = 0
  beginning = find_beginning(array)
  ending = find_ending(array)

  while i < beginning.length
    if i == beginning.length - 1
      sequence += beginning[i].to_s + "-" + ending[i].to_s
    elsif beginning[i] == ending[i]
      sequence += beginning[i].to_s + ", "
    else
      sequence += beginning[i].to_s + "-" + ending[i].to_s + ", "
    end
    i += 1
  end
  sequence
end

def find_beginning(array)
  array.select {|number| number if !array.include?(number.pred)}
end

def find_ending(array)
  array.select {|number| number if !array.include?(number.next)}
end

array = [1,2,3,6,7,8,12,18,19,20]
p find_sequences(array)