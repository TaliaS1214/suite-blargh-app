
#author, title, mood, content

authors = ["Balthazar", "Louis", "Delmon", "Calvin", "Terry", "Julio", "Quincy"]
titles1 = ["The best ", "A new ", "One ginormous ", "You shoulda seen this ", "My favorite ", "A hot air balloon hijacked by a "]
titles2 = ["guacamole", "sewer lid", "ball of gas", "small goat", "blanket", "piece of comprimising evidence"]
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
