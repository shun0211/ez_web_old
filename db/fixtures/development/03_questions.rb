user = User.first

Question.create!(
  user: user,
  title: "プログラミング言語について"
)
