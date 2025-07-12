# Fictional-Characters-SQL-Analysis
This SQL project explores a curated dataset of fictional characters from anime, movies, video games, and TV shows. The goal is to analyze their roles, alignment, backstories, hobbies, and more using MySQL.

The dataset includes 10 diverse characters, and queries are designed to uncover storytelling patterns, genre dominance, and unique traits among characters.


---


🔍 SQL Queries & Insights

📦 Dataset Summary

Total Characters: 10 fictional characters

Fields Analyzed: 15 attributes per character

Media Types: Anime, Movie, Video Game, TV Show

Genre Types: Fantasy, Action, Thriller, Sci-Fi

Roles: Hero, Villain, Anti-Hero

Alignments: Good, Evil, Neutral

1. 🎭 Most Common Genres
Identifies the top 5 most frequent genres used in the dataset (e.g., Fantasy, Action).
📌 Helps understand which genres are most popular among character creators.

3. 🧠 Role vs. Alignment Distribution
Shows how character roles (like Hero/Villain) correlate with alignment types (Good/Evil/Neutral).
📌 Provides insight into moral diversity among different character types.

4. 📚 Characters with Longest Backstories
Ranks characters by the length of their backstory content.
📌 Highlights characters with detailed histories or emotional arcs.

5. ✍️ Average Description Length by Genre
Computes average description length for each genre.
📌 Fantasy and Action genres tend to have longer, more elaborate character bios.

6. 🦹‍♂️ Villain Detection
Lists all characters with “Villain” in their role.
📌 Helps isolate antagonist characters for focused analysis.

7. 🎮 Media Type Focus
Filters characters from Anime and Video Games only.
📌 Narrow-down view for fans or researchers focusing on those media formats.

8. ⚔️ Anti-Hero Identification
Finds morally complex characters (role = Hero, alignment ≠ Good).
📌 Detects gray-area protagonists and complex narratives.

9. 🗣️ Dialogue Depth Analysis
Finds average length of scenario/dialogue examples for each genre.
📌 Gives a sense of expressiveness and writing style depth by genre.

10. 💔 Tragic Backstory Detection
Identifies characters with tragic events in their past using keywords like loss, abandonment, or betrayal.
📌 Reveals emotionally intense storytelling patterns.

11. 🎨 Most Diverse Personalities (Hobby Count)
Counts the number of hobbies listed for each character using commas.
📌 Ranks characters with broad or rich personalities.

12. 🏆 Backstory Length Ranking
Ranks all characters based on their backstory size using the RANK() function.
📌 Highlights the characters with the most narrative weight.

13. 📌 Top Character per Genre (By Description Length)
Uses ROW_NUMBER() to select the one character per genre with the longest description.
📌 Ideal for spotlighting standout characters per genre.



## 📊 Sample Query (Longest Backstory Characters)

```sql
SELECT character_name, LENGTH(backstory) AS backstory_length
FROM media_character_profiles
ORDER BY backstory_length DESC
LIMIT 10;
