user = User.first

Question.create!(
  user: user,
  title: "プログラミング言語について",
  content: "プログラミング言語は何を勉強したらいいですか？"
)
