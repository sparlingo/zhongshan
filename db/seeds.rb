# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |tag|
    Tag.create!(
        name: "KB#{tag}"
    )
end
puts "3 tags created"

3.times do |topic|
    Topic.create!(
        title: "KB#{topic}"
    )
end
puts "3 topics created"

5.times do |album|
    Album.create!(
        title: "This album is #{album}",
        subtitle: "This is the fucking subtitle",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the 
        industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled 
        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic 
        typesetting, remaining essentially unchanged.",
        main_image: "mainImage",
        thumb_image: "thumbImage"
    )
end
puts "5 albums created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the 
        industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled 
        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic 
        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
        containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including 
        versions of Lorem Ipsum.",
        topic_id: Topic.last.id,
        status: 1
    )
end
puts "10 blog posts created"
