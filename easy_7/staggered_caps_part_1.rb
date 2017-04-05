# Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String that
# contains the original value using a staggered capitalization scheme in which every
# other character is capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters
# when switching between upper and lowercase.

# Example:

# ```
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# ```

def staggered_case(str, start='up')
  remainder = if start == 'up'
                0
              elsif start == 'down'
                1
              end
              
  staggered = str.chars.map.with_index do |letter, index|
                if index % 2 == remainder
                  letter.upcase
                else
                  letter.downcase
                end
              end

  staggered.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('ALL_CAPS', 'down') == 'aLl_cApS'