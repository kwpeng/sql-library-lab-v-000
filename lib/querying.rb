sdef select_books_titles_and_years_in_first_series_order_by_year
  SELECT title, year FROM books
  WHERE series_id = 1
  ORDER BY year
end

def select_name_and_motto_of_char_with_longest_motto
  SELECT character.name, character.motto FROM characters
  ORDER BY CHAR_LENGTH(character.motto) DESC 
  LIMIT 1
end


def select_value_and_count_of_most_prolific_species
  SELECT 
end

def select_name_and_series_subgenres_of_authors
  SELECT authors.name, series.title, subgenres.name FROM series
  JOIN authors WHERE authors.id = series.authors_id
  JOIN subgenres WHERE subgenres_id = series.subgenres_id
end

def select_series_title_with_most_human_characters
  SELECT series.title, SUM(series.id) FROM series 
  JOIN characters WHERE series.id = characters_series.id
  GROUP BY characters.species HAVING MAX(series.id)
  
end

def select_character_names_and_number_of_books_they_are_in
  SELECT characters.name, sum(books.id) FROM characters
  JOIN 
  
end
