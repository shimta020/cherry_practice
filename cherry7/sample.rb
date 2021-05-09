class User
  def initialize(name)
    @name = name
  end
  def self.create_users(names)
    names.map { |name| User.new(name) }
  end

  def hello
    "hello, #{@name}"
  end
end

names = ['shim', 'tai', 'keiko']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end