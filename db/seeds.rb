#user seeds
User.destroy_all

user1 = User.create(
  :first_name => "Shelley",
  :last_name => "Zhang",
  :interests => "",
  :image => "shelleyz.jpg",
  :password => "chicken",
  :interests => "",
  :language => "",
  :email => "shelley@ga.co",
  :gender => "female",
  :dob => '1991-11-04',
  :location => "Sydney",
  :bio => "",
  :admin => true

)

user2 = User.create(
  :first_name => "Sherine",
  :last_name => "Foo",
  :interests => "",
  :image => "sherine.jpg",
  :password => "chicken",
  :interests => "",
  :email => "sherine@ga.co",
  :gender => "female",
  :dob => '1979-06-05',
  :location => "Sydney",
  :bio => "",
  :admin => true

)

user3 = User.create(
  :first_name => "Zabrina",
  :last_name => "Lagamayo",
  :interests => "",
  :password => "chicken",
  :interests => "",
  :image => "zabrinal.jpg",
  :email => "zabrina@ga.co",
  :gender => "female",
  :dob => '1993-08-29',
  :location => "Sydney",
  :bio => "",
  :admin => true
)

user4 = User.create(
  :first_name => "EJ",
  :last_name => "Willard",
  :interests => "",
  :image => "ejw.png",
  :password => "chicken",
  :interests => "Cats & Tats, Anime and Japan",
  :email => "ej@ga.co",
  :gender => "female",
  :dob => '1987-01-15',
  :location => "Sydney",
  :bio => "Don't worry - I'm not crazy about me either.",
  :admin => true
)

Conversation.destroy_all

message1 = Conversation.create(
  :sender_id => 1,
  :receiver_id => 3
)
message2 = Conversation.create(
  :sender_id => 3,
  :receiver_id => 1
)

Mailbox.destroy_all

mailbox1 = Mailbox.create(
  :sender_id => 1,
  :content => "Love you bb",
  :conversation_id => message1.id
)

mailbox2 = Mailbox.create(
  :sender_id => 3,
  :content => "Me too",
  :conversation_id => message1.id
)

mailbox3 = Mailbox.create(
  :sender_id => 3,
  :content => "hello dude",
  :conversation_id => message2.id
)

Category.destroy_all

q1 = Category.create(
  :api_id => 9,
  :category => "General Knowledge"
)
q2 = Category.create(
  :api_id => 10,
  :category => "Entertainment: Books"
)
q3 = Category.create(
  :api_id => 11,
  :category => "Entertainment: Films"
)
q4 = Category.create(
  :api_id => 12,
  :category => "Entertainment: Music"
)
q5 = Category.create(
  :api_id => 13,
  :category => "Entertainment: Musicals & Theatres"
)
q6 = Category.create(
  :api_id => 14,
  :category => "Television"
)
q7 = Category.create(
  :api_id => 15,
  :category => "Video Games"
)
q8 = Category.create(
  :api_id => 16,
  :category => "Board Games"
)
q9 = Category.create(
  :api_id => 17,
  :category => "Science & Nature"
)
q10 = Category.create(
  :api_id => 18,
  :category => "Science: Computers"
)
q11 = Category.create(
  :api_id => 19,
  :category => "Science: Mathematics"
)
q12 = Category.create(
  :api_id => 20,
  :category => "Mythology"
)
q13 = Category.create(
  :api_id => 21,
  :category => "Sports"
)
q14 = Category.create(
  :api_id => 22,
  :category => "Geography"
)
q15 = Category.create(
  :api_id => 23,
  :category => "History"
)
q16 = Category.create(
  :api_id => 24,
  :category => "Politics"
)
q17 = Category.create(
  :api_id => 25,
  :category => "Arts"
)
q18 = Category.create(
  :api_id => 26,
  :category => "Celebrities"
)
q19 = Category.create(
  :api_id => 27,
  :category => "Animals"
)
q20 = Category.create(
  :api_id => 28,
  :category => "Vehicles"
)
q21 = Category.create(
  :api_id => 29,
  :category => "Entertainment: Comics"
)
q22 = Category.create(
  :api_id => 30,
  :category => "Science: Gadgets"
)
q23 = Category.create(
  :api_id => 31,
  :category => "Entertainment: Japanese Anime & Manga"
)
q13 = Category.create(
  :api_id => 32,
  :category => "Entertainment: Cartoon and Animations"
)
