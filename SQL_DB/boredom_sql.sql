drop database boredom_slayer_db;
create database boredom_slayer_db;
USE boredom_slayer_db;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Insert categories into the 'categories' table
INSERT INTO categories (category_name) VALUES
    ('Indoor Activity'),
    ('Outdoor Activity'),
    ('Learn New Things'),
    ('With Friends');

-- Create the 'activity_data' table
CREATE TABLE activity_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(255) NOT NULL,
    activity_description TEXT,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

select * from categories;

-- Insert sample activities for 'Indoor Activity' (You can add more)
INSERT INTO activity_data (activity_name, activity_description, category_id) VALUES
    ('Read a Book', 'Select a book you love and get lost in its pages.', 1),
    ('Cook a New Recipe', 'Try your hand at cooking a new and exciting dish.', 1),
    ('Learn to Play an Instrument', 'Pick up a musical instrument and start learning to play it.', 1),
    ('Do a Puzzle', 'Challenge your mind with a jigsaw puzzle or crossword.', 1),
    ('Start a Journal', 'Write down your thoughts, goals, or daily experiences.', 1),
    ('Practice Yoga', 'Relax and stay fit with indoor yoga sessions.', 1),
    ('Watch a Movie', 'Choose a film you\'ve been wanting to watch.', 1),
    ('Paint or Draw', 'Express your creativity through art.', 1),
    ('Learn a New Language', 'Start learning a new language online.', 1),
    ('Build a LEGO Set', 'Engage in some nostalgic building with LEGO sets.', 1);

-- Insert sample activities for 'Outdoor Activity' (You can add more)
INSERT INTO activity_data (activity_name, activity_description, category_id) VALUES
    ('Go for a Hike', 'Explore a nearby trail or nature reserve.', 2),
    ('Play Soccer', 'Gather friends for a friendly soccer match.', 2),
    ('Visit the Beach', 'Relax by the sea, build sandcastles, or swim.', 2),
    ('Bike Ride', 'Take a scenic bike ride around your area.', 2),
    ('Camp in the Wilderness', 'Spend a night camping under the stars.', 2),
    ('Have a Picnic', 'Pack a picnic basket and enjoy a meal outdoors.', 2),
    ('Explore a Park', 'Visit a local park and enjoy the greenery.', 2),
    ('Bird Watching', 'Observe and identify local bird species.', 2),
    ('Go Fishing', 'Enjoy some quiet time by the water with a fishing rod.', 2),
    ('Stargazing', 'Head to a dark spot and gaze at the night sky.', 2);

-- Insert sample activities for 'Learn New Things' (You can add more)
INSERT INTO activity_data (activity_name, activity_description, category_id) VALUES
    ('Take an Online Course', 'Enroll in an online course on a topic of interest.', 3),
    ('Read a Non-Fiction Book', 'Expand your knowledge with non-fiction literature.', 3),
    ('Attend a Workshop', 'Participate in workshops or seminars.', 3),
    ('Practice Coding', 'Learn programming by coding projects.', 3),
    ('Learn Photography', 'Master the art of photography and capture moments.', 3),
    ('Study History', 'Dive into the history of a specific era or region.', 3),
    ('Learn a Musical Instrument', 'Start playing a musical instrument.', 3),
    ('Explore Science', 'Study various scientific subjects and discoveries.', 3),
    ('Watch Documentaries', 'Educate yourself by watching documentaries.', 3),
    ('Learn Cooking Techniques', 'Enhance your culinary skills with new techniques.', 3);

-- Insert sample activities for 'With Friends' (You can add more)
INSERT INTO activity_data (activity_name, activity_description, category_id) VALUES
    ('Play Board Games', 'Gather friends for a board game night.', 4),
    ('Host a Movie Marathon', 'Watch a series of movies with friends.', 4),
    ('Cook a Potluck Dinner', 'Each friend brings a dish for a potluck dinner.', 4),
    ('Outdoor Sports', 'Engage in outdoor sports activities.', 4),
    ('Karaoke Night', 'Sing your hearts out with friends at a karaoke bar.', 4),
    ('Plan a Road Trip', 'Embark on a road trip adventure together.', 4),
    ('Visit an Amusement Park', 'Enjoy thrilling rides and games.', 4),
    ('Attend a Live Concert', 'Experience live music and concerts.', 4),
    ('Volunteer Together', 'Give back to the community by volunteering as a group.', 4),
    ('Host a Game Night', 'Play various games and enjoy snacks.', 4);


select * from activity_data;