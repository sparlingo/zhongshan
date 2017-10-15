# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    email: "kevinsparling@hotmail.com",
    password: "halohalo",
    password_confirmation: "halohalo",
    name: "Kevin Sparling",
    roles: "site_admin"
)
puts "Admin user created"

User.create!(
    email: "test@test.com",
    password: "testtest",
    password_confirmation: "testtest",
    name: "Testy McTesterton",
)
puts "Test user created"

9.times do |tag|
    Tag.create!(
        name: "KB#{tag}"
    )
end
puts "3 tags created"

9.times do |topic|
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

Blog.create!(
    title: "This is the beginning",
    body: "<div>Think back to when you were a child, did the summers seem to last forever? 
    They certainly seemed longer than they do now, if you&#39;re lucky enough to get a 
    month or six weeks off between school semesters - how much can you do really? The kids 
    though, they actually get bored. Bored! I don&#39;t even remember what that is.</div>
    
    <div>&nbsp;</div>
    
    <div>Every year is new, every semester is new. New teachers, new students, things that 
    used to be a problem are fixed and things that used to work great need a little adjustment. 
    Great!&nbsp;</div>
    
    <div>I'll be pouring my little hear out here at least once a week, I suppose the target audience is 
    foreigners who are thinking of coming to China to teach, at our school or otherwise. It's been said that 
    people who come to China for a week can write a book about their experiences, people who come for three months
    can only write an article, and after a year they can't even fill a postcard. I hope I can break through the bewilderment.",
    topic_id: Topic.first.id,
    status: 1,
    created_at: "2017-09-01 12:00:00"
)

Blog.create!(
    title: "Baby, baby, baby AWWWWWWWWWWW",
    body: "<div>I came to the kindergarten in the spring of 2015, and when I came everything was a 
    big adjustment, China was an adjustment. The classes with the older children were a bit easier,
    there were 4 different age levels. One class was the baby class, baby class was a problem sometimes.
    They were just so young, I didn't know how to handle them sometimes because they can't do much
    in their native language much less their second or third. When I had a good class with them though
    it was just the best time of the week. Those kids are still at the school, they were KB8, then KB6,
    then KB4, now KB1!</div>

    <div>&nbsp;</div>

    <div>This class is the class that most often if I just want to sit in with a class it's the one
    I go for. There are so many children there that I've seen get so much bigger than I just can't help
    myself but take some special pride in their success. one girl Rosa was in my extra after school class
    last semester, and she would always wait for me for an extra couple of minutes while I packed up
    my computer so that we could hold hands when we went down the stairs. I'm not a good enough person to
    do that, but she is! I don't want to go on and on about Rosa here but she is for sure one of the 
    children that I've always just loved: she's just the best at laughing.</div>
    ",
    topic_id: 2,
    status: 1,
    created_at: "2017-09-05 12:00:00"
)

Blog.create!(
    title: "Not-e, not-e, not-e",
    body: '<div>"if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.” 
    ― Marilyn Monroe</div>
    <div>Kindergarten classes are a lot like that class American bomshell, sometimes they\'re bad ad that makes
    the good times so much better. I think each class that I\'ve had here in China at some point or another has been either
    the best behaved or the worst behaved. Right now there are 7 classes, I teach each 2 or 3 times a week and the ebb and flow
    through a semester causes each to be a pain or a pleasure. I\'m not in the class to see what drives a class from "oh so good"
    to "oh so naughty", but there seems to be a rhythm to it.</div>
    ',
    topic_id: 3,
    status: 1,
    created_at: "2017-09-12 12:00:00"
)

puts "original blog posts created"
