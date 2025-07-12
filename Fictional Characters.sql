use fictional_characters;
-- Switch to the fictional_characters database

CREATE TABLE media_character_profiles (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each character
    character_name             VARCHAR(100),  -- Name of the character
    media_type                 VARCHAR(50), -- Type of media (e.g., Anime, Movie, Game)
    media_source               VARCHAR(255),  -- Name of the media (e.g., Naruto, GTA)
    genre                      VARCHAR(50), -- Genre of the media (e.g., Fantasy, Action)
    role                       VARCHAR(50), -- Role in the story (e.g., Hero, Villain)
    personality_traits         TEXT, -- Personality traits (e.g., Brave, Curious)
    backstory                  TEXT, -- Character's backstory or past
    skills_abilities           TEXT, -- Skills or powers the character has
    appearance_description     TEXT, -- Physical appearance details
    alignment                  VARCHAR(50), -- Moral alignment (e.g., Good, Evil, Neutral)
    interests_hobbies          TEXT, -- Hobbies or interests (e.g., Cooking, Fighting)
    relationships              TEXT, -- Relationship details with other characters
    significance_impact        TEXT, -- Significance or impact in the story 
    description                TEXT, -- Overall character description
    scenario_dialogue_example  TEXT -- Sample dialogue or scenario featuring the character
);

-- Sample Data Insertion
INSERT INTO media_character_profiles (
  character_name, media_type, media_source, genre, role, personality_traits,
  backstory, skills_abilities, appearance_description, alignment, interests_hobbies,
  relationships, significance_impact, description, scenario_dialogue_example
) VALUES
('Naruto Uzumaki', 'Anime', 'Naruto', 'Action', 'Hero', 'Energetic, Loyal',
 'Orphaned as a child, ostracized by the village...', 'Shadow Clone, Rasengan',
 'Blonde hair, blue eyes, headband', 'Good', 'Training, Ramen',
 'Sasuke (Rival), Kakashi (Mentor)', 'Main protagonist',
 'A ninja with a dream to become Hokage...', '"I never give up, no matter what!"'),

('Severus Snape', 'Movie', 'Harry Potter', 'Fantasy', 'Anti-Hero', 'Sarcastic, Brave',
 'Double agent for Dumbledore and Voldemort', 'Potion-making, Occlumency',
 'Black robes, long greasy hair', 'Neutral', 'Reading, Solitude',
 'Lily Potter (Love), Voldemort (Master)', 'Redeemed by sacrifice',
 'Feared professor with a hidden heart', '"Always."'),

('Kratos', 'Video Game', 'God of War', 'Action', 'Hero', 'Stoic, Vengeful',
 'Spartan warrior who fought and killed gods', 'Superhuman strength, Rage of Sparta',
 'Muscular, tattoos, bald with beard', 'Chaotic Good', 'Combat training, Hunting',
 'Atreus (Son)', 'Transformed from revenge to fatherhood',
 'Greek god-slayer turned Nordic protector', '"Boy."'),

('Light Yagami', 'Anime', 'Death Note', 'Thriller', 'Villain', 'Intelligent, Narcissistic',
 'Discovers Death Note and decides to become a god', 'Strategic thinking, Manipulation',
 'Brown hair, school uniform', 'Lawful Evil', 'Chess, Justice debates',
 'Ryuk (Shinigami)', 'Raises questions on morality and justice',
 'A student who sought to eliminate all evil by killing', '"I am Justice!"'),

('Elsa', 'Movie', 'Frozen', 'Fantasy', 'Hero', 'Reserved, Noble',
 'Born with ice powers she struggles to control', 'Cryokinesis',
 'Blonde braid, ice dress', 'Good', 'Singing, Exploring',
 'Anna (Sister)', 'Symbol of empowerment',
 'Queen of Arendelle with magical powers', '"Let it go!"'),

('Geralt of Rivia', 'TV Show', 'The Witcher', 'Fantasy', 'Hero', 'Gruff, Loyal',
 'A witcher mutated to hunt monsters', 'Swordsmanship, Signs, Alchemy',
 'White hair, cat eyes, armor', 'Neutral Good', 'Drinking, Monster contracts',
 'Yennefer, Ciri, Jaskier', 'Wanders while shaping fates',
 'Mutant mercenary with a moral code', '"People linked by destiny will always find each other."'),

('Harley Quinn', 'Movie', 'Suicide Squad', 'Action', 'Anti-Hero', 'Wild, Unpredictable',
 'Psychiatrist turned anarchist after Joker', 'Gymnastics, Psychology',
 'Pigtails, colorful outfit, makeup', 'Chaotic Neutral', 'Explosions, Mallets',
 'Joker (Ex), Poison Ivy (Friend)', 'Symbol of rebellion',
 'Former villain with newfound independence', '"I’m known to be quite vexing, I’m just warning you."'),

('Batman', 'Movie', 'The Dark Knight', 'Action', 'Hero', 'Brooding, Just',
 'Witnessed his parents murdered as a child', 'Martial arts, Detective skills, Gadgets',
 'Black suit, cape, cowl', 'Good', 'Technology, Justice',
 'Alfred, Robin, Joker', 'Defender of Gotham',
 'Vigilante billionaire fighting crime in Gotham', '"I am vengeance. I am the night. I am Batman!"'),

('Jinx', 'TV Show', 'Arcane', 'Sci-Fi', 'Villain', 'Chaotic, Emotional',
 'Childhood trauma led to unstable behavior', 'Explosives, Gunplay',
 'Blue hair, punk look', 'Chaotic Evil', 'Tinkering, Chaos',
 'Vi (Sister)', 'Explores mental illness and loyalty',
 'An inventor gone rogue', '"Pow-pow! Let’s blow it all up!"'),

('Zuko', 'Anime', 'Avatar: The Last Airbender', 'Fantasy', 'Anti-Hero', 'Angsty, Determined',
 'Banished prince seeking redemption', 'Firebending, Swordsmanship',
 'Scarred face, royal attire', 'Neutral Good', 'Meditation, Training',
 'Iroh (Uncle), Aang (Rival/Friend)', 'One of the best redemption arcs',
 'From villain to beloved hero', '"That’s rough, buddy."');

select * from media_character_profiles;
-- Retrieve all data from the media_character_profiles table

#1. Most Common Genre of Characters
SELECT genre, COUNT(*) AS character_count
FROM media_character_profiles
GROUP BY genre
ORDER BY character_count DESC
LIMIT 5;
-- Shows the top 5 genres with the highest number of characters

#2. Count of Characters by Role and Alignment
SELECT role, alignment, COUNT(*) AS total
FROM media_character_profiles
GROUP BY role, alignment
ORDER BY total DESC;
-- Displays a count of characters grouped by their role and alignment (e.g., Hero-Good)

# 3. Characters with Longest Backstories
SELECT character_name, LENGTH(backstory) AS backstory_length
FROM media_character_profiles
ORDER BY backstory_length DESC
LIMIT 10;
-- Lists top 10 characters with the longest backstory content

# 4. Average Description Length by Genre
SELECT genre, AVG(CHAR_LENGTH(description)) AS avg_description_length
FROM media_character_profiles
GROUP BY genre
ORDER BY avg_description_length DESC;
-- Calculates average character description length for each genre

# 5. Characters Who Are 'Villain' in Role
SELECT character_name, role, alignment
FROM media_character_profiles
WHERE role LIKE '%villain%';
-- Finds all characters where their role contains the word 'villain'

# 6. Characters from Anime or Video Game Only
SELECT character_name, media_type, media_source
FROM media_character_profiles
WHERE media_type IN ('Anime', 'Video Game');
-- Filters characters that belong to either Anime or Video Game

# 7. List Characters Who Are “Anti-Heroes” (Role Contains 'Hero', Alignment Not 'Good')
SELECT character_name, role, alignment
FROM media_character_profiles
WHERE LOWER(role) LIKE '%hero%'
AND LOWER(alignment) NOT LIKE '%good%';
-- Lists characters that are heroes in role but not aligned with good


# 8. Genre-Wise Average Length of Scenario/Dialogue Examples
SELECT genre, ROUND(AVG(CHAR_LENGTH(scenario_dialogue_example)), 0) AS avg_dialogue_length
FROM media_character_profiles
GROUP BY genre
ORDER BY avg_dialogue_length DESC;
-- Finds average length of scenario/dialogue examples per genre

# 9. Identify tragic characters — those whose backstory includes 'loss', 'abandonment', or 'betrayal'
SELECT character_name, media_source, backstory
FROM media_character_profiles
WHERE LOWER(backstory) REGEXP 'loss|abandonment|betrayal';
-- Filters characters whose backstory includes themes of loss, abandonment, or betrayal

# 10. Group characters by number of hobbies/interests to find most diverse personalities
SELECT character_name, interests_hobbies,
LENGTH(interests_hobbies) - LENGTH(REPLACE(interests_hobbies, ',', '')) + 1 AS hobby_count
FROM media_character_profiles
WHERE interests_hobbies IS NOT NULL
ORDER BY hobby_count DESC
LIMIT 10;
-- Estimates number of hobbies by counting commas in the interests_hobbies field

# 11. Rank Characters by Length of Backstory
SELECT character_name, CHAR_LENGTH(backstory) AS backstory_length,
RANK() OVER (ORDER BY CHAR_LENGTH(backstory) DESC) AS backstory_rank
FROM media_character_profiles;
-- Ranks all characters based on the length of their backstory using window function

# 12. Get One Character per Genre with the Longest Description (Using ROW_NUMBER)
SELECT * FROM (SELECT character_name, genre, description,
ROW_NUMBER() OVER (PARTITION BY genre ORDER BY CHAR_LENGTH(description) DESC) AS rn
FROM media_character_profiles
) AS ranked
WHERE rn = 1;
-- For each genre, returns the one character with the longest description using ROW_NUMBER()










