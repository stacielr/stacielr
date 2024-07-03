CREATE DATABASE Netflix;

USE Netflix;

/* Create table for the excel file netflix_titles   */

CREATE TABLE titles (
  title VARCHAR(50),
  show_id INT
  PRIMARY KEY (show_id)
);

/* Create table for the excel file netflix_details    */

CREATE TABLE details (
    show_id INT,
    duration_minutes INT,
    duration_seasons TINYINT,
    type VARCHAR(25),
    date_added DATE,
    release_year YEAR,
    rating VARCHAR(10)
  );

/* Create table for the excel file netflix_categories    */

CREATE TABLE categories (
  show_id INT,
  listed_in VARCHAR(50)
  );

/* Create table for the excel file netflix_cast    */

CREATE TABLE cast (
  cast_name VARCHAR(50),
  show_id INT
  );

/* Create table for the excel file netflix_directors1    */

CREATE TABLE directors1 (
  director VARCHAR(75),
  show_id INT
  );

/* Create table for the excel file netflix_directors2    */

CREATE TABLE directors2 (
  director VARCHAR(75),
  show_id INT
  );

/* Create table for the excel file netflix_descriptions    */

CREATE TABLE descriptions (
  show_id INT,
  description VARCHAR(255)
  );

/* Create table for the excel file netflix_countries    */

CREATE TABLE countries (
  country VARCHAR(75),
  show_id INT
  );

/*     IMPORT DATA      */

LOAD DATA INFILE '[directory]/[filename].csv' INTO TABLE [tablename] 
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

/*     QUERIES     */

