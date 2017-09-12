def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS total
  FROM  characters
  GROUP BY species
  ORDER BY total DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN subgenres
  ON authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title
  FROM series
  INNER JOIN character_books
  ON series.id = book_id
  INNER JOIN characters
  ON character_id = characters.id
  GROUP BY title
  HAVING COUNT(species = 'human')
  ORDER BY species DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(book_id) AS count
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY name
  ORDER BY count DESC, name ASC;"
end
