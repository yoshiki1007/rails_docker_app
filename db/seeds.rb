users_date = [
  {
    name: "user1",
    email: 'user1@example.com',
    password: 'passw@rd'
  },
  {
    name: "user2",
    email: 'user2@example.com',
    password: 'passw@rd'
  },
  {
    name: "user3",
    email: 'user3@example.com',
    password: 'passw@rd'
  },
  {
    name: "user4",
    email: 'user4@example.com',
    password: 'passw@rd'
  },
  {
    name: "user5",
    email: 'user5@example.com',
    password: 'passw@rd'
  },
]

users_date.each do |user_date|
  user = User.find_by(email: user_date[:email])
  # 該当ユーザーがいなければ、createする

  if user.nil?
    User.create(
      name: user_date[:name],
      email: user_date[:email],
      password: user_date[:password]
    )
  end
end
