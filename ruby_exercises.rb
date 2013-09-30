# Note: we're looking for Ruby commands for the below questions, not the actual answers, unless it's a question.

# Hint: you can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor that can run Ruby code, or copy/paste into irb.

# Hint 2: you can refer to the Ruby doc for Array and Hash here:

# http://www.ruby-doc.org/core-1.9.3/Array.html
# http://www.ruby-doc.org/core-1.9.3/Hash.html



def section_heading(num)
  puts "\n"
  puts "[Exercise #{num}]"
end

# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
section_heading 1
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each {|i| puts "#{i}"}


# 2. Same as above, but only print out values greater than 5.
section_heading 2
arr2 = arr.select {|i| i > 5}
arr2.each {|i| puts "#{i}"}

# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.
section_heading 3
arr3 = arr.select {|i| i.odd?}
puts "#{arr3}"

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
section_heading 4
arr3.push 11
arr3.unshift 0
puts "#{arr3}"

# 5. Get rid of "11". And append a "3".
section_heading 5
arr3.pop
arr3.push 3
puts "#{arr3}"

# 6. Get rid of duplicates without specifically removing any one value.
section_heading 6
arr6 = arr3.uniq
puts "#{arr6}"


# 7. What's the major difference between an Array and a Hash?
section_heading 7
puts "Array is a group of values that ordered and indexed by number. "
puts "Hashes are key-value pairs"

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
section_heading 8
hash_1_8 = {:a => 1, :b => 2}
puts "#{hash_1_8}"
hash_1_9 = {c: 3, d: 4}
puts "#{hash_1_9}"


# Suppose you have a h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}

# 9. Get the value of key "b".
section_heading 9
puts "#{h[:b]}"


# 10. Add to this hash the key:value pair {e:5}
section_heading 10
h[:e] = 5
puts "#{h}"

# 13. Remove all key:value pairs whose value is less than 3.5
section_heading 13
h.delete_if { |k,v| v < 3.5}
puts "#{h}"

# 14. Can hash values be arrays? Can you have an array of hashes? (give examples)
section_heading 14
ha = {a: [1,2,3], b: []}
ah = [{a:1, b:2}, {}]
puts "#{ha}"
puts "#{ah}"

# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
section_heading 15
puts "http://ruby-doc.org/core-1.9.3/"
puts "Easy to navigate. Page design is clean and easy to read."
puts "\nI also like http://apidock.com/ruby"
puts "It has useful user notes."



