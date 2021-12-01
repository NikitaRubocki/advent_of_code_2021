data = File.open('./input.txt').readlines.map(&:chomp)
data.map! { |str| str.to_i }

count = 0
# for i in 0...data.length()-1
#   if data[i+1].to_i > data[i].to_i
#     count += 1
#   end
# end

for i in 0...data.length()-3
  a = data[i] + data[i+1] + data[i+2]
  b = data[i+1] + data[i+2] + data[i+3]
  if b > a
    count += 1
  end
end
puts count
