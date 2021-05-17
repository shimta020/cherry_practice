# リニアサーチ

# nums = [1,3,5,7,9,11]

# def linear_search(nums,num)
#   nums.each do |n|
#     puts nums.index(n) if num == n
#   end
#   'None'
# end

# linear_search(nums, 7)

# バイナリサーチ

nums = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

def binary_search(nums, num)
  if nums[nums.length.div(2)] == num
    return nums.length.div(2)
  elsif nums[nums.length.div(2)] > num
    nums = nums[nums.length.div(2)+1..nums.length-1]
  else
    nums = nums[0..nums.length.div(2)-1]
  end
  binary_search(nums, num)
  'None'
end

binary_search(nums, 11)