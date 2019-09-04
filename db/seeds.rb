puts 'clearing records...'
User.destroy_all

puts 'adding users...'
sophie = User.create!(
  email: 'sophie@sophie.cat',
  first_name: 'Sophie',
  last_name: 'the cat'
)

margot = User.create!(
  email: 'margot@margot.cat',
  first_name: 'Margot',
  last_name: 'the cat'
)

puts 'adding items...'
Item.create!(
  [
    {
      title: 'Martian Chronicles',
      description: 'Cult book by Ray Bradbury',
      user: sophie,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/4/45/The-Martian-Chronicles.jpg'
    },
    {
      title: 'The Martian',
      description: 'Novel by Andy Weir about an astronaut stranded on Mars trying to survive',
      user: sophie,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/c/c3/The_Martian_2014.jpg'
    },
    {
      title: 'Doom',
      description: 'A group of Marines is sent to the red planet via an ancient ' \
                   'Martian portal called the Ark to deal with an outbreak of a mutagenic virus',
      user: margot,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/5/57/Doom_cover_art.jpg'
    },
    {
      title: 'Mars Attacks!',
      description: 'Earth is invaded by Martians with unbeatable weapons and a cruel sense of humor',
      user: margot,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/b/bd/Mars_attacks_ver1.jpg'
    }
  ]
)

puts 'done!'
