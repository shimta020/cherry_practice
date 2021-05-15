# https://atcoder.jp/contests/abc201/tasks/abc201_c

s = gets.strip.split('')
int = [[],[]]
s.each_with_index do |val, i|
  if val == 'o'
    int[0] << i
  elsif val == '?' 
    int[1] << i
  end
end

def secret_number(int)
  if int[0].length > 4
    0
  elsif int[0].length == 4
    24
  elsif int[0].length == 3
    4*6*(int[1].length) + 36
  elsif int[0].length == 2
    14 + 4*6*(int[1].length) + 6*2*((int[1].length)**2)
  elsif int[0].length == 1
    4*((int[1].length)**3) + 6*((int[1].length)**2) + 4*((int[1].length)**3) + 1
  elsif int[0].length == 0
    (int[1].length)**4
  end
end

p secret_number(int)