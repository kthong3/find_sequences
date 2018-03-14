# Find Sequences
Written in Ruby.

To run locally:
- Clone the git repository to your local machine.
- Run command: `ruby runner.rb`

## When given an array of integers, output a string that includes the sequence of numbers.  
input: [1,2,3,6,7,8,12,18,19,20]  
output: "1-3, 6-8, 12, 18-20"

## Pseudocode
### find beginning of sequence
- iterate through array  
  - for each number, check if previous number does not exist  
  - if the previous number does not exist does not exist, it is the beginning of a sequence

### find end of sequence
- iterate through array  
  - for each number, check if next number does not exist  
  - if the next number does not exist in the array, it is the end of a sequence
