# https://atcoder.jp/contests/typical90/tasks/typical90_v
nums = gets.strip.split.map(&:to_i)
cnt = 0
if nums.all?(&:even?)
  until nums.uniq.length == 1 do
    nums[nums.each_index.select{|i| nums[i] == nums.max }[0]] = nums[nums.each_index.select{|i| nums[i] == nums.max }[0]].div(2)
    cnt +=1
  end
else
  cnt = nums.inject(:+) - 3
end
puts cnt