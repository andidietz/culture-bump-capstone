INSERT INTO users (
    username,
    name,
    password,
    email
) VALUES 
    ('AlgerianStudents', 'Algerian Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Algerian-test@gmail.com'),
    ('SaudiArabianStudents', 'Saudi Arabian Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'SaudiArabian-test@gmail.com'), 
    ('ItalianStudents', 'Italian Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Italian-test@gmail.com'),  
    ('MexicanStudents', 'Mexican Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Mexican-test@gmail.com'),
    ('BrazilianStudents', 'Brazilian Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Brazilian-test@gmail.com'),   
    ('AmericanStudents', 'American Students',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'American-test@gmail.com');

INSERT INTO categories (category)
VALUES ('in school');

INSERT INTO subcategories (
    subcategory
) VALUES 
    ('interacting with the teacher'),
    ('interacting with adminstration'),
    ('interacting with other students'),
    ('classroom etiquette');

INSERT INTO tags (
    tag
) VALUES 
    ('Algeria'),
    ('Saudi Arabia'),
    ('Italy'),
    ('Mexico'),
    ('Brazil'),
    ('United States');


INSERT INTO reference_points (
    story,
    observation, 
    response,
    emotions,
    universal,
    action,
    qualities,
    connection_point,
    user_id,
    header_situation_id,
    header_specification_id,
    category_id,
    subcatergory_id
)
VALUES 
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I step inside, greet the teacher as I walk to a seat', 
        'Sample Qualities', 'Sample', 'Algerian Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I knock on the door, step inside, greet the teacher and say “I’m sorry” as I walks to a seat',
        'Sample Qualities', 'Sample', 'Saudi Arabian Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I knock on the door, step inside and say, “Sorry” and wait for the teacher to give me permission to sit down.', 
        'Sample Qualities', 'Sample', 'Italian Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I slip in quietly and sit at the first available seat. At that time, I must explain why I am late only if the teacher asks', 
        'Sample Qualities', 'Sample', 'Mexican Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I slip in quietly and sit at the first available seat. At that time, I must explain why I am late only if the teacher asks', 
        'Sample Qualities', 'Sample', 'Brazilian Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I slip in quietly and sit at the first available seat. I may apologize to the teacher after class', 
        'Sample Qualities', 'Sample', 'American Students', 1, 1, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I just talk if I have something to say until the professor insists on some order.', 
        'Sample Qualities', 'Sample', 'Algerian Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I raise  my hand and ask the teacher my question.', 
        'Sample Qualities', 'Sample', 'Saudi Arabian Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I raise  my hand and ask the teacher my question.', 
        'Sample Qualities', 'Sample', 'Italian Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I may ask the teacher during the class or I may ask a classmate after class.', 
        'Sample Qualities', 'Sample', 'Mexican Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I may ask the teacher during the class or I may ask a classmate after class.', 
        'Sample Qualities', 'Sample', 'Brazilian Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I raise  my hand and ask the teacher my question.', 
        'Sample Qualities', 'Sample', 'American Students', 2, 3, 1, 4),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I take notes, nod my head and look directly at teacher.', 
        'Sample Qualities', 'Sample', 'Algerian Students', 9, 2, 1, 1), 
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I cross my arms across my chest and look directly at the teacher.', 
        'Sample Qualities', 'Sample', 'Saudi Arabian Students', 9, 2, 1, 1),
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I take notes, nod my head and look directly at the teacher.', 
        'Sample Qualities', 'Sample','Italian Students', 9, 2, 1, 1),  
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I ask questions or make comments. I may or may not take notes.', 
        'Sample Qualities', 'Sample', 'Mexican Students', 9, 2, 1, 1),  
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I ask questions or make comments. I may or may not take notes.', 
        'Sample Qualities', 'Sample', 'Brazilian Students', 9, 2, 1, 1),  
    ('Sample', 'Sample', 'Sample', 'Sample', 'Sample', 
        'I take notes, nod my head and look directly at the teacher.', 
        'Sample Qualities', 'Sample', 'American Students', 9, 2, 1, 1);  


    
INSERT INTO  header_situations (
    header_situation
) VALUES 
    ('When I arrive late'),
    ('When I have a question'),
    ('When I work on group projects'),
    ('When I am unprepared'),
    ('When I have homework'),
    ('When I get hungry'),
    ('When I address the teacher'),
    ('When I want to use a computer or phone'),
    ('When I want to show the teacher I am paying attention'),
    ('The type of students I expect to see');


INSERT INTO header_specifications (
    header_specification
) VALUES 
    ('to class'),
    ('in class'),
    ('during a lecture'),
    ('for a test');