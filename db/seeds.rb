3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )

end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
       title: "My Post #{blog}",
       body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Duis volutpat, mi nec tristique tincidunt, ipsum est aliquet odio, sed feugiat quam quam ac mauris.
              Nunc interdum, purus sed maximus egestas, ante risus pulvinar risus, nec condimentum magna augue et ligula.
              Nullam mattis, velit in gravida viverra, lacus purus interdum nibh, quis dictum leo ligula tempus elit.
              Maecenas eu lacus et mi consectetur tincidunt. Nam in odio molestie, vulputate augue sed, lacinia tortor.
              Nullam ut vehicula massa. Aenean varius eros hendrerit mi viverra, vehicula auctor diam elementum.
              Pellentesque cursus velit nec leo malesuada, a ultrices lorem aliquam.
              Mauris dignissim nibh at ipsum egestas suscipit.
              Morbi eu neque et felis rhoncus finibus non a erat.",
       topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
      title: "Skill #{skill}",
      percent_utilized: 15
  )
end

puts "5 skills created."


8.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Pellentesque ullamcorper placerat erat in maximus.
             Phasellus pulvinar varius aliquet. Praesent metus dui, vehicula nec placerat nec, ullamcorper vel ipsum.",
      main_image: "http://placehold.it/640x480",
      thumbnail: "http://placehold.it/300x150"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio #{portfolio_item}",
      subtitle: "Python",
      body: "Pellentesque ullamcorper placerat erat in maximus.
             Phasellus pulvinar varius aliquet. Praesent metus dui, vehicula nec placerat nec, ullamcorper vel ipsum.",
      main_image: "http://placehold.it/640x480",
      thumbnail: "http://placehold.it/300x150"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
          name: "Technology #{technology}"
  )
end

puts "3 technologies created"