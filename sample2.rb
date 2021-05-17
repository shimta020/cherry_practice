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

# def binary_search(nums, num)
#   if nums[nums.length.div(2)] == num
#     return nums.length.div(2)
#   elsif nums[nums.length.div(2)] > num
#     nums = nums[nums.length.div(2)+1..nums.length-1]
#   else
#     nums = nums[0..nums.length.div(2)-1]
#   end
#   binary_search(nums, num)
#   'None'
# end

# binary_search(nums, 11)

def binary_search(nums, target)

  head = 0
  tail = nums.length - 1

  while head <= tail
    center = (head + tail).div(2)
    if nums[center] = target
      return center
    elsif nums[center] > target
      head = center + 1
    else
      tail = center - 1
    end
  end
  
  'None'

end

puts binary_search(nums, 12)