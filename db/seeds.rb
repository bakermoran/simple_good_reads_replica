# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(first_name: "Baker", last_name: "Moran", user_name: "bamoran", password: "password1", password_confirmation: "password1", admin: true)
u2 = User.create(first_name: "Maria", last_name: "Fenters", user_name: "mfenters", password: "password2", password_confirmation: "password2", admin: false)
u3 = User.create(first_name: "Katie", last_name: "Thompson", user_name: "ktbug", password: "password3", password_confirmation: "password3", admin: false)
u4 = User.create(first_name: "Owen", last_name: "Auch", user_name: "owenauch", password: "password4", password_confirmation: "password4", admin: false)

a1 = Author.create(first_name: "Michael", last_name: "Chabon", bio: "American novelist, screenwriter, columnist and short story writer.")
a2 = Author.create(first_name: "Cixin", last_name: "Liu", bio: "Chinese Sci-Fi writer.")
a3 = Author.create(first_name: "Cheryl", last_name: "Strayed", bio: "Author of books related to hiking.")
a4 = Author.create(first_name: "Malcolm", last_name: "Gladwell", bio: "Philopopher, podcaster, writer, Canadian.")
a5 = Author.create(first_name: "Stephen W.", last_name: "Hawking", bio: "Important British physicist. Also had ALS.")
a6 = Author.create(first_name: "John", last_name: "Steinbeck", bio: "Nobel prize in literature winner, Stanford grad, author.")
a7 = Author.create(first_name: "George R. R.", last_name: "Martin", bio: "American fantasy writer")

b1 = Book.create(title: "The Amazing Adventures of Kavalier and Klay", author_id: a1.id, description: "Joe Kavalier, a young Jewish artist who has also been trained in the art of Houdini-esque escape, has just smuggled himself out of Nazi-invaded Prague and landed in New York City. His Brooklyn cousin Sammy Clay is looking for a partner to create heroes, stories, and art for the latest novelty to hit America - the comic book. Drawing on their own fears and dreams, Kavalier and Clay create the Escapist, the Monitor, and Luna Moth, inspired by the beautiful Rosa Saks, who will become linked by powerful ties to both men. With exhilarating style and grace, Michael Chabon tells an unforgettable story about American romance and possibility.", publisher: "Picador", year_published: 2001)
b2 = Book.create(title: "The Three-Body Problem", author_id: a2.id, description: "The Three-Body Problem is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China's most beloved science fiction author, Liu Cixin. Rememberance of Earth's Past #1", publisher: "Tor", year_published: 2014)
b3 = Book.create(title: "The Dark Forest", author_id: a2.id, description: "The Dark Forest is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China's most beloved science fiction author, Liu Cixin. Rememberance of Earth's Past #2", publisher: "Tor", year_published: 2015)
b4 = Book.create(title: "Death's End", author_id: a2.id, description: "Death's End is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China's most beloved science fiction author, Liu Cixin. Rememberance of Earth's Past #3", publisher: "Tor", year_published: 2016)
b5 = Book.create(title: "Wild", author_id: a3.id, description: "At twenty-two, Cheryl Strayed thought she had lost everything. In the wake of her mother’s death, her family scattered and her own marriage was soon destroyed. Four years later, with nothing more to lose, she made the most impulsive decision of her life. With no experience or training, driven only by blind will, she would hike more than a thousand miles of the Pacific Crest Trail from the Mojave Desert through California and Oregon to Washington State — and she would do it alone. Told with suspense and style, sparkling with warmth and humor, Wild powerfully captures the terrors and pleasures of one young woman forging ahead against all odds on a journey that maddened, strengthened, and ultimately healed her.", publisher: "Knopf", year_published: 2012)
b6 = Book.create(title: "Outliers", author_id: a4.id, description: "In this stunning new book, Malcolm Gladwell takes us on an intellectual journey through the world of 'outliers'--the best and the brightest, the most famous and the most successful. He asks the question: what makes high-achievers different? His answer is that we pay too much attention to what successful people are like, and too little attention to where they are from: that is, their culture, their family, their generation, and the idiosyncratic experiences of their upbringing. Along the way he explains the secrets of software billionaires, what it takes to be a great soccer player, why Asians are good at math, and what made the Beatles the greatest rock band.", publisher: "Back Bay/Little, Brown", year_published: 2008)
b7 = Book.create(title: "A Brief History of Time", author_id: a5.id, description: "In the ten years since its publication in 1988, Stephen Hawking's classic work has become a landmark volume in scientific writing, with more than nine million copies in forty languages sold worldwide. That edition was on the cutting edge of what was then known about the origins and nature of the universe. But the intervening years have seen extraordinary advances in the technology of observing both the micro- and the macrocosmic worlds. These observations have confirmed many of Professor Hawking's theoretical predictions in the first edition of his book, including the recent discoveries of the Cosmic Background Explorer satellite (COBE), which probed back in time to within 300,000 years of the universe's beginning and revealed wrinkles in the fabric of space-time that he had projected. Eager to bring to his original text the new knowledge revealed by these observations, as well as his own recent research, Professor Hawking has prepared a new introduction to the book, written an entirely new chapter on wormholes and time travel, and updated the chapters throughout.", publisher: "Bantam", year_published: 1998)
b8 = Book.create(title: "East of Eden", author_id: a6.id, description: "In his journal, Nobel Prize winner John Steinbeck called East of Eden “the first book,” and indeed it has the primordial power and simplicity of myth. Set in the rich farmland of California’s Salinas Valley, this sprawling and often brutal novel follows the intertwined destinies of two families—the Trasks and the Hamiltons—whose generations helplessly reenact the fall of Adam and Eve and the poisonous rivalry of Cain and Abel. Adam Trask came to California from the East to farm and raise his family on the new rich land. But the birth of his twins, Cal and Aaron, brings his wife to the brink of madness, and Adam is left alone to raise his boys to manhood. One boy thrives nurtured by the love of all those around him; the other grows up in loneliness enveloped by a mysterious darkness. First published in 1952, East of Eden is the work in which Steinbeck created his most mesmerizing characters and explored his most enduring themes: the mystery of identity, the inexplicability of love, and the murderous consequences of love's absence. A masterpiece of Steinbeck's later years, East of Eden is a powerful and vastly ambitious novel that is at once a family saga and a modern retelling of the Book of Genesis.", publisher: "Penguin", year_published: 1952)
b9 = Book.create(title: "A Game of Thrones", author_id: a7.id, description: "A Song of Ice and Fire #1", publisher: "Bantam", year_published: 1996)
b10 = Book.create(title: "A Clash of Kings", author_id: a7.id, description: "A Song of Ice and Fire #2", publisher: "Bantam", year_published: 1999)
b11 = Book.create(title: "A Storm of Swords", author_id: a7.id, description: "A Song of Ice and Fire #3", publisher: "Bantam", year_published: 2000)
b12 = Book.create(title: "A Feast for Crows", author_id: a7.id, description: "A Song of Ice and Fire #4", publisher: "Bantam", year_published: 2005)
b13 = Book.create(title: "A Dance with Dragons", author_id: a7.id, description: "A Song of Ice and Fire #5", publisher: "Bantam", year_published: 2011)

Review.create(review_text: "Well written and insteresting, I just wish more would've happened.", user_id: u1.id, book_id: b1.id, rating: 4)
Review.create(review_text: "Got kind of bored with it. Themes were interesting though.", user_id: u2.id, book_id: b1.id, rating: 3)
Review.create(review_text: "Stopped reading it half way through.", user_id: u3.id, book_id: b1.id, rating: 2)

Review.create(review_text: "Got a little confusing, but some great hard sci-fi and a fun adventure.", user_id: u1.id, book_id: b2.id, rating: 4)
Review.create(review_text: "This was a fun read. The human computer was a cool concept.", user_id: u2.id, book_id: b2.id, rating: 4)
Review.create(review_text: "Amazing. A must read", user_id: u3.id, book_id: b2.id, rating: 5)
Review.create(review_text: "Pretty good book.", user_id: u4.id, book_id: b2.id, rating: 4)

Review.create(review_text: "Even better than the first. Super interesting answer to the Fermi Paradox", user_id: u3.id, book_id: b3.id, rating: 5)

Review.create(review_text: "Didn't live up to the firs two for me, but a great end to the series", user_id: u3.id, book_id: b4.id, rating: 4)

Review.create(review_text: "Boring and not what I expected.", user_id: u2.id, book_id: b5.id, rating: 1)
Review.create(review_text: "Was ok at best. Didn't like the writing and didn't find the narrative compelling.", user_id: u3.id, book_id: b5.id, rating: 2)

Review.create(review_text: "Pretty interesting theories in here.", user_id: u4.id, book_id: b6.id, rating: 4)

Review.create(review_text: "Amazing. Just Wow.", user_id: u1.id, book_id: b8.id, rating: 5)
Review.create(review_text: "Incredible epic narrative.", user_id: u2.id, book_id: b8.id, rating: 4)
Review.create(review_text: "Super interesting retelling of the story of Cain and Able.", user_id: u3.id, book_id: b8.id, rating: 4)
Review.create(review_text: "Great book. Cal may be one of the best characters in literature.", user_id: u4.id, book_id: b8.id, rating: 5)
