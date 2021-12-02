data = File.open('./input.txt').readlines.map(&:chomp)

forward = 0
aim = 0
depth = 0

# solution #1
# for ele in data do
#   if ele[0] == "f"
#     forward += ele[-1].to_i
#   end
#   if ele[0] == "u"
#     depth -= ele[-1].to_i
#   elsif ele[0] == "d"
#     depth += ele[-1].to_i
#   end
# end

# solution 2
for ele in data do
  if ele[0] == "f"
    forward += ele[-1].to_i
    depth += aim * ele[-1].to_i
  end
  if ele[0] == "u"
    aim -= ele[-1].to_i
  elsif ele[0] == "d"
    aim += ele[-1].to_i
  end
end

puts("Results: #{forward*depth}")
