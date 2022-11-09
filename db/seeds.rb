# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

products = Product.create(name: "Fountain Pen", price: 195, image_url: "http://pilotpen.us/images/products/vpjfpblubbkmt.jpg?t=1667408362", description: "The Vanishing Point retractable fountain pen is a product rich in both history and performance. Its brilliant design and ingenious technology make it a pen for the new age. A larger size, durable metal body and attractive appointments make the Vanishing Point unmistakably unique. Available in black, blue and red barrel colors with gold or rhodium accents, black or blue carbonesque finishes with rhodium accents, and yellow, brown, raden, chrome, white and gun metal gray finishes with rhodium accents. All are available with an 18 karat gold fine, medium or broad nib.")

products = Product.create(name: "Notebook", price: 30, image_url: "https://static2.jetpens.com/images/a/000/203/203132.jpg?auto=format&ba=middle%2Ccenter&balph=3&blend64=aHR0cDovL3d3dy5qZXRwZW5zLmNvbS9pbWFnZXMvYXNzZXRzL3dhdGVybWFyazIucG5n&bm=difference&bs=inherit&chromasub=444&fm=jpg&h=400&mark64=aHR0cDovL3d3dy5qZXRwZW5zLmNvbS9pbWFnZXMvYXNzZXRzL3dhdGVybWFyazEucG5n&markalign=top%2Cright&markalpha=30&markscale=16&q=90&usm=20&w=600&s=60883fa40b5e5ce35170e2de4f88c84b", description: "This sleek, minimalist planner was designed for 'editors'—people who use their planners not only for listing appointments but also for jotting down notes, lists, sketches, and designs. You can easily use it as a journal or idea book instead of a planner. The planner holds a full year's worth of pages, but thanks to its thin paper it is slim enough to easily slip into a bag or backpack.")

products = Product.create(name: "Stationery Set", price: 50, image_url: "https://images.squarespace-cdn.com/content/v1/591a04711e5b6c3701808c11/1533780852478-6MFHSGN07R6Q3BV0TUDI/mode-de-paris-2.jpg?format=1500w", description: "Return to the genteel world of thoughtful correspondence with the luxurious G. Lalo Mode de Paris Boxed Stationery Set. These 30 flat note cards (3.75 x 6) and matching tissue-lined envelopes are perfect for those post-interview notes, heartfelt congratulations and thank-you missives, and brief invitations. The 300 g Verge de France card stock has a fine laid finish, giving the subtle feel of handmade paper, and deckled edges. Choose from an array of elegant colors, and enjoy these lovely note cards presented in an Art Deco box.")

suppliers = Supplier.create(name: "Jet Pens", email: "jet@jetpens.com", phone_number: "111-222-3333")

suppliers = Supplier.create(name: "Wonder Fair", email: "wonder@wonderfair.com", phone_number: "222-333-4444")
