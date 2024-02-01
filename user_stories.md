#### Epic

”A local hotel wants to keep a record of room bookings. The hotel has a lot of rooms, but customers will only be able to choose one room per booking. The person who books the room is not necessarily the person providing contact details.”

#### User Stories
- As a customer, so I can have a place to stay tomorrow night, I want to book a room at the hotel.
- As the hotel owner, so I can expand my business, I want to add new rooms to the hotel.    

## Extension Exercises

Come up with User Stories (and possibly a more detailed Epic) for each of the following scenarios. 

Then design the database tables and relationships which would be needed to implement them.

1. A local candle maker wants to open an online store selling their handmade candles and other artifacts, they need a database system to use as part of this online shop. Details of customers need to be stored, products need to be stored and updated, a record of customer orders also needs to be maintained. Design the database system for the Candle Shop.

- As a customer, I want to view different candles and artifacts so I can choose what to buy.
- As the shop owner, I need to add, update, and remove products from my store.
- As a customer, I want to place orders for my selected products.
- As the shop owner, I need to keep track of customer orders and their statuses.

customer: id, name, email, phone_number, bank_account
product: id, name, price
order: id, customer, product, created, status

2. A restaurant wants to introduce an online booking system for their main dining room, which has various tables. The restaurant is open throughout the day so customers can book for a variety of times.

- As a customer, I want to book a table at the restaurant for a specific date and time.
- As the restaurant manager, I need to manage the availability of tables.

customer: id, name, phone_number, email
table: id, capacity
reservation: id, customer, date, time, table


3. A University library wishes to implement an online system for borrowing books and other items from the library. Each user will be able to borrow up to 6 items at a time.

- As a library member, I want to borrow books and other items from the library.
- As a librarian, I need to manage the inventory of books and items.

user: user_id, number, email, max_items_number, current_items_number
item: item_id, name, type, creator 
borrow: borrow_id, item_id, user_id, borrow_date, return_date

4. When they originally launched Social Media sites such as Twitter, Identica, Diaspora and Mastodon all described themselves as micro-blogging sites, design a database schema for a similar micro-blogging Social Media site.
- As a user, I want to post short messages or updates.
- As a user, I want to follow other users to see their posts.

user: user_id, name, description, email, password
post: post_id, user_id, timestamp, text
follow: follower_id, user_id, user_id

5. Think about an online learning system as used by a school, a university or a coding bootcamp, design the database tables etc that might be required to implement such a system.
- As a student, I want to enroll in courses.
- As a teacher, I need to manage courses and track student progress.
- As a student, I want to submit assignments and receive feedback.

students: student_id, name, email
teachers: teacher_id, name, email
courses: course_id, name, teacher_id
enrollments: enrollment_id, student_id, course_id, enrollment_timestamp
assignments: assignment_id, course_id, title, content, deadline, posted_timestamp
submissions: submission_id, student_id, assignment_id, posted_timestamp
Feedback: feedback_id, student_id, teacher_id, submission_id, mark, feedback, posted_timestamp