# https://atcoder.jp/contests/abc199/tasks/abc199_c

N = gets.to_i
S = gets.strip.split('')
Q = gets.to_i
Queries = []
Q.times { Queries << gets.split.map(&:to_i) }

# class Array
#   def swap!(x,y)
#     self[x], self[y] = self[y], self[x]
#   end
# end


# Queries.each do |q|
#   if q[0] == 1
#     S.swap!(q[1]-1,q[2]-1)
#   else
#     S.swap!(0..N-1,N..2*N-1)
#   end
# end

Queries.each do |q|
  if q[0] == 1
    S[q[1]-1], S[q[2]-1] = S[q[2]-1], S[q[1]-1]
  else
    S[0..N-1], S[N..2*N-1] = S[N..2*N-1], S[0..N-1]
  end
end

p S