#user seeds
User.destroy_all

user1 = User.create(
  :first_name => "Shelley",
  :last_name => "Zhang",
  :password => "chicken",
  :interests => "edit these!",
  :email => "shelley@ga.co",
  :gender => "female",
  :dob => '1991-11-04',
  :location => "Sydney",
  :bio => "Edit this",
  :admin => true
)

user2 = User.create(
  :first_name => "Sherine",
  :last_name => "Foo",
  :password => "chicken",
  :interests => "edit these!",
  :email => "sherine@ga.co",
  :gender => "female",
  :dob => '1979-06-05',
  :location => "Sydney",
  :bio => "Edit this",
  :admin => true
)

user3 = User.create(
  :first_name => "Zabrina",
  :last_name => "Lagamayo",
  :password => "chicken",
  :interests => "edit these!",
  :email => "zabrina@ga.co",
  :gender => "female",
  :dob => '1993-08-29',
  :location => "Sydney",
  :bio => "Edit this",
  :admin => true
)

user4 = User.create(
  :first_name => "EJ",
  :last_name => "Willard",
  :password => "chicken",
  :interests => "Japan",
  :email => "ej@ga.co",
  :gender => "female",
  :dob => '1987-01-15',
  :location => "Sydney",
  :bio => "Don't worry - I'm not crazy about me either.",
  :admin => true
)
