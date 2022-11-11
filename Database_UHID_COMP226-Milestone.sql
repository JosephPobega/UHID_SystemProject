/*
	Elliot Dean		Joe Pobega		Evan Schuett	Alex Szenborn	COMP 226
    SQL Database for Main Project		Professor Deo
    8 November 2022
*/

-- Database Creation
DROP DATABASE IF EXISTS uhiddb;
CREATE DATABASE uhiddb;

-- Database Selection
USE uhiddb;

-- Tables to be Created

CREATE TABLE patient_care_network
(
  pcn_first_name					VARCHAR(40)		NOT NULL,
  pcn_last_name						VARCHAR(40)		NOT NULL, 
  provider_type						VARCHAR(40)		NOT NULL,
  national_provider_identifier		INT				NOT NULL	UNIQUE	PRIMARY KEY,
  board_certification				VARCHAR(40)		NOT NULL,
  pcn_age							INT 			NOT NULL,
  pcn_gender						VARCHAR(10)		NOT NULL,
  undergrad_education				VARCHAR(40)		NOT NULL,
  grad_education					VARCHAR(40)		NOT NULL,
  accepted_insurances				VARCHAR(50)		NOT NULL
);

CREATE TABLE medication_information
(
  drug_name_generic			VARCHAR(40)		NOT NULL	UNIQUE	PRIMARY KEY,
  drug_name_brand			VARCHAR(40)		NOT NULL,
  drug_dosage				INT				NOT NULL,
  drug_schedule				TIME 			NOT NULL
);

CREATE TABLE patient_account_information
(
   patient_id				INT				UNIQUE		NOT NULL	PRIMARY KEY,
   password_info			VARCHAR(40) 	UNIQUE		NOT NULL,	
   mem_first_name			VARCHAR(40)		NOT NULL,
   mem_last_name			VARCHAR(40)		NOT NULL,
   mem_age					INT 			NOT NULL,
   mem_gender				VARCHAR(10)		NOT NULL,
   mem_date_of_birth		DATE 			NOT NULL,
   mem_physical_address		VARCHAR(40)		NOT NULL,
   mem_phone_number			INT 			NOT NULL,
   mem_email_address		VARCHAR(40)		NOT NULL
);

CREATE TABLE patient_basic_information
(
   date_of_measurement			DATE	NOT NULL,
   weight						FLOAT	NOT NULL,
   height						FLOAT	NOT NULL,
   body_mass_index				FLOAT	NOT NULL,
   fat_percent_composition		FLOAT,
   bone_percent_composition		FLOAT,
   muscle_percent_composition	FLOAT,
   water_percent_composition	FLOAT
);   

CREATE TABLE patient_vital_signs
(
   date_of_measurement	DATE		NOT NULL,
   blood_pressure		FLOAT		NOT NULL,
   pulse				INT			NOT NULL,
   oxygen_saturation	FLOAT		NOT NULL,
   respiratory_rate		INT
);
   
   


CREATE TABLE patient_insurance_information
(
  insurance_provider		VARCHAR(40)		NOT NULL,
  group_number				VARCHAR(40)		NOT NULL,
  member_id					VARCHAR(40)		NOT NULL	PRIMARY KEY,
  name_of_account_holder	VARCHAR(40)		NOT NULL,
  provider_phone_number		INT 			NOT NULL,
  provider_address			VARCHAR(40)		NOT NULL
);

CREATE TABLE patient_emergency_contact
(	
   eme_first_name					VARCHAR(40)		NOT NULL,
   eme_last_name					VARCHAR(40)		NOT NULL,
   eme_physical_address				VARCHAR(40)		NOT NULL,
   eme_phone_number					INT 			NOT NULL,
   eme_email_address				VARCHAR(40)		NOT NULL,
   eme_relationship_to_patient		VARCHAR(30)		NOT NULL
);

CREATE TABLE database_information
(
   hosting_provider			VARCHAR(40)		NOT NULL,
   type_of_hosting_plan		VARCHAR(40)		NOT NULL,
   cost_of_hosting_plan		FLOAT			NOT NULL,
   server_location			VARCHAR(40)		NOT NULL,
   server_ip_address		FLOAT			NOT NULL	PRIMARY KEY
);

CREATE TABLE provider_location
(
   type_of_location				VARCHAR(40)		NOT NULL,
   location_name				VARCHAR(40)		NOT NULL	PRIMARY KEY,
   location_phone_number		INT				NOT NULL,
   location_address				VARCHAR(40)		NOT NULL,
   services_provided			VARCHAR(40)		NOT NULL,
   providers_at_facility		VARCHAR(40)		NOT NULL,
   location_operation_hours		INT				NOT NULL
);
   

   
  /* 

-- Adding Data to Tables
INSERT INTO songs VALUES
	("Sweet Child o' Mine", 0555);
SELECT song_title AS 'Song Title',
	TIME_FORMAT(track_duration, '%i:%s') AS 'Track Duration (MM:SS)'
FROM songs;

INSERT INTO artists VALUES
	("Guns N' Roses", 'Axl Rose', 'Slash / Izzy Stradlin', 'Duff McKagan', 'Steven Adler', 'Adriana Smith');
SELECT artist AS 'Artist',
	personnel_vocals AS 'Vocals',
    personnel_guitar AS 'Guitar',
    personnel_bass AS 'Bass',
    personnel_drums AS 'Drums',
    personnel_other AS 'Other Personnel'
FROM artists;

INSERT INTO albums VALUES
	('Appetite for Destruction', 'Hard Rock / Hair Metal', '1987-07-21', '5352');
SELECT album AS 'Album',
	genre AS 'Genre',
    DATE_FORMAT(album_release_date, '%d %M %Y') AS 'Release Date',
    TIME_FORMAT(album_duration, '%i:%s') AS 'Album Duration (MM:SS)'
FROM albums;     

INSERT INTO studios VALUES
	('Rumbo Recorders', 'Canoga Park, California', 'Geffen', 'Mike Clink');
SELECT recording_studio AS 'Recording Studio',
	recording_studio_information AS 'Studio Information',
	record_label AS 'Label',
    producer AS 'Producer'
FROM studios;    

INSERT INTO performance VALUES
	('18x Platinum', 18000000, 'United States');
SELECT certification AS 'Certification',
	FORMAT(unit_sales, 0) AS 'Albums Sold',
    region AS 'Region'
FROM performance;    
	
  */  
    
    
    
