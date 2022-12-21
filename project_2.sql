CREATE TABLE zoo (
animal_name VARCHAR PRIMARY KEY,
scientific_name VARCHAR
);




-- Joins tables
SELECT zoo.animal_name, zoo.scientific_name,
	 animals.animal_name, animals."Kingdom", animals."Phylum", animals."Class"
FROM zoo
LEFT JOIN animals 
ON zoo.animal_name = animals.animal_name



CREATE TABLE joined_animals AS (SELECT zoo.animal_name, zoo.scientific_name,
	 animals."Kingdom", animals."Phylum", animals."Class"
FROM zoo
LEFT JOIN animals 
ON zoo.animal_name = animals.animal_name)

SELECT * FROM joined_animals

delete from joined_animals where joined_animals."Kingdom" IS NULL 

	 