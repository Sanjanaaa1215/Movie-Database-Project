-- This case study involves managing a movie database system. The system includes tables for movies, actors, directors, movie actors, movie directors, and reviews.
-- Your task is to create the necessary tables, insert records, and perform various SQL queries to manage and analyze the data.

-- Create  Database 
create database Movies_Database;
use Movies_Database;

-- Create Tables for Movie Database System
-- Movies Table
Create Table Movies ( 
	MovieID INT Primary Key,
	Title VARCHAR(255),
	ReleaseYear YEAR,
	Genre VARCHAR(255),
	Rating DECIMAL(3,1)
    );
    desc Movies;

-- Actors Table
Create Table Actors (
	ActorID INT Primary Key,
	FirstName VARCHAR(100),
	LastName VARCHAR(100),
	BirthYear YEAR
    );
    desc Actors;

-- Directors Table
Create Table Directors (
	DirectorID INT Primary Key,
	FirstName VARCHAR(100),
    LastName VARCHAR(100),
	BirthYear YEAR
    );
    desc Directors;
    
-- MovieActors Table
Create Table MovieActors (
    MovieID INT,
    ActorID INT,
    Role VARCHAR(255),
    primary key (MovieID, ActorID),
    Foreign key (MovieID) References Movies(MovieID),
    foreign key (ActorID) References Actors(ActorID)
    );
    desc MovieActors;
    
-- MovieDirectors Table
Create Table MovieDirectors (
    MovieID INT,
    DirectorID INT,
    primary key (MovieID, DirectorID),
    foreign key (MovieID) References Movies(MovieID),
    foreign key (DirectorID) References Directors(DirectorID)
    );
    desc MovieDirectors;
    
-- Review Table
Create Table Reviews (
    ReviewID INT primary key,
    MovieID INT,
    ReviewerName VARCHAR(200),
    ReviewDate Date,
    Rating DECIMAL(3,2),
    Comments Text,
    foreign key (MovieID) references Movies(MovieID)
    );
    desc Reviews;
    

-- Insert 10 Records In Each Table    

-- Movies Table Records
Insert into Movies (MovieID, Title, ReleaseYear, Genre, Rating)
VALUES (1, 'Kabir Singh', 2019, 'Drama', 7.1),
	   (2, 'Queen', 2013, 'Comedy', 8.1),
       (3, 'Ra.One', 2011, 'Sci-Fi', 5.5),
       (4, 'War', 2019, 'Action', 6.5),
       (5, 'Chhichhore', 2019, 'Daram', 8.2),
       (6, 'Andaz Apna Apna', 1994, 'Comedy', 8.1),
       (7, 'Koi..Mil Gaya', 2003, 'Sci-Fi', 7.1),
       (8, 'Sultan', 2016, 'Action', 7.0),
       (9, 'Tanu Weds Manu', 2011, 'Comedy', 7.5),
       (10, 'Dhoom 3', 2013, 'Action', 5.4);
       

-- Actors Table Records
Insert into Actors (ActorID, FirstName, LastName, BirthYear)
VALUES (11, 'Shahid', 'Kapoor', 1981),
       (12, 'Kangana', 'Ranaut', 1986),
       (13, 'Shahrukh', 'Khan', 1965),
       (14, 'Hrithik', 'Roshan', 1974),
       (15, 'Sushant', 'Singh Rajput', 1986),
       (16, 'Aamir', 'Khan', 1965),
       (17, 'Preity', 'Zinta', 1975),
       (18, 'Salman', 'Khan', 1965),
       (19, 'R', 'Madhavan', 1967),
       (20, 'Abhishek', 'Bachchan', 1976);       
       
-- Directors Table Records
Insert into Directors ( DirectorID, FirstName, LastName, BirthYear)
VALUES (201, 'Sandeep', 'Reddy Vanga', 1981),
       (202, 'Vikas', 'Bahl', 1971),
       (203, 'Karan', 'Johar', 1956),
       (204, 'Siddharth', 'Anand', 1978),
       (205, 'Nitesh', 'Tiwari', 1973),
       (206, 'Rajkumar', 'Santoshi', 1956),
       (207, 'Rakesh', 'Rosahn', 1949),
       (208, 'Ali Abbas', 'Zafar', 1982),
       (209, 'Anand', 'Rai', 1971),
       (210, 'Vijay', 'Acharya', 1968);
       
    
-- MovieActors Table Records
Insert into MovieActors (MovieID, ActorID, Role)
VALUES (1, 11, 'Kabir Rajdheer Singh'),
       (2, 12, 'Rani Mehra'),
       (3, 13, 'G.One'),
       (4, 14, 'Major Kabir Dhaliwal'),
       (5, 15,'Anni'),
       (6, 16, 'Amar Manohar'),
       (7, 17, 'Nisha'),
       (8, 18, 'Sultan Ali Khan'),
       (9, 19, 'Manu'),
       (10, 20, 'ACP Jai Dixit');
       
       
-- MovieDirectors Table Records
Insert into MovieDirectors(MovieID, DirectorID)
Values (1,201),
       (2,202),
       (3,203),
       (4,204),
       (5,205),
       (6,206),
       (7,207),
       (8,208),
       (9,209),
       (10,210);
       
       
-- Review Table Records
Insert into Reviews (ReviewID, MovieID, ReviewerName, ReviewDate, Rating, Comments)
VALUES (301, 1, 'Bobby Pandey', '2020-05-12', 8.0, 'Kabir Singh Was intense and gripping. Shahid Kapoor delivered a powerful performance.'),
       (302, 2, 'Rani Thakur', '2013-12-25', 7.5, 'Queen is an inspiring and uplifting film. Kangana Ranaut was Phenomenal.'),
       (303, 3, 'Neelam Jadhav', '2011-03-01', 5.0, 'Ra.One had greate visuals, but the story was lacking. Disapppointing overall.'),
       (304, 4, 'Vaishnavi Bhosale', '2020-09-16', 6.8, 'War had amazing action sequence, but the plot was predictable.'),
       (305, 5, 'Sameer Rathode', '2019-04-15', 8.9, 'Chhichhore is a heartfelt film with a great message.Sushant was brilliant.'),
       (306, 6, 'Sakshi Gupta', '2000-10-10', 9.0, 'Andaz Apna Apna is classic comedy. Amir and Salman were hilarious.'),
       (307, 7, 'Vaishnav Jagtap', '2003-07-15', 7.2, 'Koi..Mil Gaya is a Unique Sci-Fi film for Bollywood.All actors were good.'),
       (308, 8, 'Arjun Reddy', '2016-09-20', 7.8, 'Sultan was an emotional journey. Salman Khan gave a strong Performance.'),
       (309, 9, 'Priya Dixit', '2012-02-28', 4.5, 'Tanu Weds Manu was fun and entertaining, but could have been better.'),
       (310, 10, 'Ketaki Chatterjee', '2016-04-08', 3.5, 'Dhoom 3 had some thrilling moments, but the plot was weak.');
       
       
-- Select Records
-- 	Write a query to select all movies from the Movies table where the Rating is above 7.0.
Select * From Movies 
Where Rating > 7.0;


-- Where Clause (And/Or)
-- 	Write a query to select all movies released between 2000 and 2010 and with the genre 'Action'.
Select * From Movies 
Where ReleaseYear Between 2000 AND 2010 AND Genre = 'Action';


-- Like Operator 
-- 	Write a query to select all actors whose LastName starts with 'S'
Select * From Actors
Where LastName Like 'S%';


-- Case Statement 
-- 	Write a query to select Title and a new column RatingCategory from the Movies table. 
-- If Rating is greater than 8.0, set RatingCategory to 'Excellent', otherwise 'Good'.
Select Title,
Case 
When Rating > 8.0 Then 'Excellent'
Else 'Good'
End As Rating_Category
From Movies;


-- SubQuery
-- 	Write a query to find all movies that have been reviewed by more than 5 reviewers. Use a subquery to find these MovieIDs.
Select * From Movies
Where MovieID in (Select MovieID
                  From Reviews
                  Group by MovieID
                  Having count(ReviewID) > 5);
  
  
  
-- Group By
-- 	Write a query to get the average Rating for each Genre. Group the results by Genre.
Select Genre, Avg(Rating) as Average_Rating
From Movies 
Group By Genre;


-- Having Clause
-- 	Write a query to get the total number of movies for each director, but only include directors who have directed more than 3 movies. 
-- Use the HAVING clause.
Select Concat(d.FirstName, ' ', d.LastName) as Director_Name,
Count(md.MovieID) as Total_Movies
From Directors d
Join MovieDirectors md ON d.DirectorID = md.DirectorID
Join Movies m ON md.MovieID = m.MovieID
Group By d.DirectorID, d.FirstName, d.LastName
Having  Count(md.MovieID) > 3;


-- Limit
-- 	Write a query to select the top 5 highest-rated movies.
Select Title, Rating
From Movies 
Order By Rating Desc
Limit 5;


-- Inner Join
-- 	Write a query to join Movies with Reviews to get a list of all movies with their Title, ReviewerName, and Rating.
Select m.Title, r.ReviewerName, r.Rating
From Movies m 
Inner Join Reviews r on m.MovieID = r.MovieID;


-- Outer Join
-- 	Write a query to get a list of all movies and any associated reviews. Include movies that might not have any reviews
Select m.Title, r.ReviewerName, r.Rating
From Movies m 
left Join Reviews r on m.MovieID = r.MovieID;


-- Join With Aggregation
-- Write a query to get the total number of movies each actor has appeared in. 
-- Use an INNER JOIN between MovieActors and Actors, and group by ActorID.
Select a.ActorID, 
       Concat(a.FirstName, ' ', a.LastName) as Actor_Name,
       Count(ma.MovieID) as Total_Movies
From MovieActors ma
inner join Actors a on ma.ActorID = a.ActorId
Group By a.ActorID, Concat(a.FirstName, ' ', a.LastName);       



-- Subquery with join
-- Write a query to find all movies directed by directors who were born after 1970. 
-- Use a subquery in the WHERE clause to find these DirectorIDs
Select m.*
From Movies m 
where m.MovieID in (Select md.MovieID
                    From MovieDirectors md
                    Join Directors d on md.DirectorID = d.DirectorID
                    where d.BirthYear > 1970);



-- Advanced Join 
-- Write a query to list Title, FirstName (of the director), LastName (of the actor), and Role for all movies.
-- Use INNER JOIN and LEFT JOIN as necessary to get all required details.
Select m.Title, d.FirstName as Director_FirstName, a.LastName as Actor_LastName, ma.Role
From Movies m 
Inner Join MovieDirectors md on m.MovieID = md.MovieID
Inner Join Directors d on md.DirectorID = d.DirectorID
Left join MovieActors ma on m.MovieID = ma.MovieID
Left Join Actors a on ma.ActorID = a.ActorID; 


