# https://atcoder.jp/contests/abc201/tasks/abc201_a

arr = gets.split.map(&:to_i).sort
puts arr[2] - arr[1] == arr[1] - arr[0] ? 'Yes' : 'No'