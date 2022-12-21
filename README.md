# Project_2
Project_2

Originally, we set out to use two datasets that were CSV files, one on zoo animal characteristics from kaggle and the other on animal class, kingdom, phylum, etc from data.world. After digging into the data, we realized that we could not merge the two because the naming of the animals was slighty different (ex. 'Shark' on one file = 'Great White Shark' on the other file). After identifying this challenge, we re-routed our project to a JSON from data.world that classified animals in the same manner as the original animal classification dataset from data.world we had pulled did. The JSON contained a list of animals and included their scientific name. 

In cleaning the data, we read in both files into pandas and removed all empty rows. We also narrowed down the datsets to only columns we wanted to have in our joint dataset. 

From there, we uploaded both dataframes into PostgreSQL. We chose a relational database because we wanted our data to be joined on animal name and allow us to see all of the information about each animal in a row. The data we selected for our join includes the animal name, the scientific name of the animal, and the animal's kingdom, phylum, and class. 
