# input array
# output string of sequences

# find beginning of sequence
  # iterate through array
    # for each number
      # check if previous number does not exist
      # if it it doesn't, it is the beginning of a sequence

# find end of sequence
  # iterate through array
    # for each number
        # check if next number does not exist
        # if it it doesn't, it is the end of a sequence

array = [1,2,3,6,7,8,12,18,19,20]

def find_sequences(array)
  sequence = ""
  i = 0
  beginning_array = find_beginning(array)
  end_array = find_end(array)

  while i < beginning_array.length
    if i == beginning_array.length - 1
      sequence += beginning_array[i].to_s + "-"
      sequence += end_array[i].to_s
    elsif beginning_array[i] == end_array[i]
      sequence += beginning_array[i].to_s + ", "
    else
      sequence += beginning_array[i].to_s + "-"
      sequence += end_array[i].to_s + ", "
    end
    i += 1
  end
  sequence
end

def find_beginning(array)
  beginning = array.select {|number| number if !array.include?(number.pred)}
end

def find_end(array)
  ending = array.select {|number| number if !array.include?(number.next)}
end

p find_sequences(array)