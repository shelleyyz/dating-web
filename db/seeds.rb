#user seeds
p "Users"
User.destroy_all

user1 = User.create(
  :first_name => "Shelley",
  :last_name => "Zhang",
  :image => "shelleyz.jpg",
  :password => "chicken",
  :interests => "",
  :language => "",
  :email => "shelley@ga.co",
  :gender => "Female",
  :dob => '1991-11-04',
  :location => "Sydney",
  :bio => "",
  :admin => true

)

user2 = User.create(
  :first_name => "Sherine",
  :last_name => "Foo",
  :image => "sherine.jpg",
  :password => "chicken",
  :interests => "",
  :email => "sherine@ga.co",
  :gender => "Female",
  :dob => '1979-06-05',
  :location => "Sydney",
  :bio => "",
  :admin => true

)

user3 = User.create(
  :first_name => "Zabrina",
  :last_name => "Lagamayo",
  :password => "chicken",
  :interests => "",
  :image => "zabrinal.jpg",
  :email => "zabrina@ga.co",
  :gender => "Female",
  :dob => '1993-08-29',
  :location => "Sydney",
  :bio => "",
  :admin => true
)

user4 = User.create(
  :first_name => "EJ",
  :last_name => "Willard",
  :image => "ejw.png",
  :password => "chicken",
  :interests => "Cats & Tats, Anime and Japan",
  :email => "ej@ga.co",
  :gender => "Female",
  :dob => '1987-01-15',
  :location => "Sydney",
  :bio => "Don't worry - I'm not crazy about me either.",
  :admin => true
)

user5 = User.create(
  :first_name => "Ryan",
  :last_name => "Gosling",
  :image => "https://media3.giphy.com/media/GpyS1lJXJYupG/giphy-downsized.gif",
  :password => "chicken",
  :interests => "Hey girl memes",
  :email => "ryangosling@ga.co",
  :gender => "Male",
  :dob => '1980-11-12',
  :location => "Sydney",
  :bio => "I'm famous"
)

user6 = User.create(
  :first_name => "Sebastian",
  :last_name => "Stan",
  :image => "https://media.giphy.com/media/rJRGNO7TVgzPG/giphy.gif",
  :password => "chicken",
  :interests => "being a bro to captain america",
  :email => "buckybarnes@ga.co",
  :gender => "Male",
  :dob => '1982-08-13',
  :location => "Sydney",
  :bio => "I'm also famous"
)

user7 = User.create(
  :first_name => "Linna",
  :last_name => "Liu",
  :image => "linna.jpeg",
  :password => "chicken",
  :interests => "Sleeping",
  :email => "linnaliu@ga.co",
  :gender => "Female",
  :dob => '1970-01-01',
  :location => "Sydney",
  :bio => "I am awesome"
)

user8 = User.create(
  :first_name => "Ryan",
  :last_name => "Reynolds",
  :image => "Ryan.jpg",
  :password => "chicken",
  :interests => "breaking the fourth wall",
  :email => "ryanreynolds@ga.co",
  :gender => "Male",
  :dob => '1976-10-23',
  :location => "Sydney",
  :bio => "I'm also famous"
)

user9 = User.create(
  :first_name => "Nick",
  :last_name => "Valentine",
  :image => "http://storage-cube.quebecormedia.com/v1/dynamic_resize?quality=75&size=1500x1500&src=http%3A%2F%2Fstorage-cube.quebecormedia.com%2Fv1%2Fellecanada_prod%2Felle_canada%2Fe8bbfd70-0871-48ae-a086-d07de169a3ed%2F46645",
  :password => "chicken",
  :interests => "weightlifting",
  :email => "nickvalentine@ga.co",
  :gender => "Male",
  :dob => '1976-08-25',
  :location => "Sydney",
  :bio => "I enjoy life"
)

p "Conversations"
Conversation.destroy_all

message1 = Conversation.create(
  :sender_id => 1,
  :receiver_id => 3
)
message2 = Conversation.create(
  :sender_id => 3,
  :receiver_id => 1
)

p "Mailboxes"
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


p "Relationships"
Relationship.destroy_all
relationship1 = Relationship.create(
  :liker_id => user1.id,
  :likee_id => user2.id
)

relationship2 = Relationship.create(
  :liker_id => user2.id,
  :likee_id => user1.id
)

relationship3 = Relationship.create(
  :liker_id => user1.id,
  :likee_id => user4.id
)

relationship4 = Relationship.create(
  :liker_id => user4.id,
  :likee_id => user2.id
)

# relationship5 = Relationship.create(
#   :liker_id => user2.id,
#   :likee_id => user3.id
# )

# relationship6 = Relationship.create(
#   :liker_id => user4.id,
#   :likee_id => user3.id
# )

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
