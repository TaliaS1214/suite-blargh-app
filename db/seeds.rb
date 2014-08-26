
#author, title, mood, content

authors = ["Balthazar", "Louis", "Delmon", "Calvin", "Terry", "Julio", "Quincy"]
titles1 = ["The best ", "A new ", "One ginormous ", "You shoulda seen this ", "My favorite ", "A hot air balloon hijacked by a "]
titles2 = ["guacamole", "sewer lid", "ball of gas", "small goat", "blanket", "piece of compromising evidence"]
moods = ["blue", "lucky", "blessed", "insatiable", "forsaken by God", "mercurial", "super duper, thanks for asking", "diabolic", "like a woman"]
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

for i in 1..20
  Entry.create!({
    author: authors.sample,
    title: titles1.sample + titles2.sample,
    mood: moods.sample,
    content: lorem
    })
end

blog_post_content = "So, this weekend's assignment was both frustrating and satisfying. I thought
the reading component of the assignment was awesome. By far the best resource on Backbone we've used
thus far. I spent a good part of Friday and the early part of Saturday doing the reading, and it
definitely helped. I'll for sure be reading through the rest of it in the coming days and weeks. As for the actual coding, that wasn't as great. I got somewhat far without referring back to
code that we wrote last week, but then I hit a wall and had to consult it several times. I knew
from the outset that I wouldn't just be able to do it from memory though, since there's a lot going
on and it's a totally new way of thinking about displaying and managing content. It'll be a little while longer
before the concepts start to really sink in - I'm planning on utilizing Backbone in my third project so that I can
get it down pat."

Entry.create!({
  author: "Sean T.",
  title: "Feelings on Backbone",
  mood: "Excited",
  content: blog_post_content.gsub('\n', ' ')
  })
