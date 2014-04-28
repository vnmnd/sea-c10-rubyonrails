# find a 4 character long palindrome in a string
a = "jfjfghgjfkjvugnngkdak"
arr = a.chars

(0..arr.length-4).each do |i|
  chunk = arr.slice(i, 4)
  if chunk == chunk.reverse
    puts chunk
    puts "***"
  end 
end 

# extra credit: find the longest palindrome in a string 