CREATE DATABASE VirtualArt
USE VirtualArt

CREATE TABLE UserInformation (
  UserID int Primary key,
  Username varchar,
  Password varchar,
  Email varchar,
  FirstName varchar,
  LastName varchar,
  Date_of_birth date,
  Profile_picture varchar,
  Favourite_artworks text,
  );

CREATE TABLE Artist(
  ArtistID int primary key,
  Name varchar,
  Biography text,
  Birthdate date,
  Nationality text,
  website varchar,
  Contact_Information int,
  
);

CREATE TABLE Artwork(
  ArtworkID int primary key,
  Description text,
  Title varchar,
  CreationDate date,
  Medium text,
  ImageURL varchar,
  ArtistID int,
  FOREIGN KEY (artistID) REFERENCES artist(artistID), 
);

CREATE TABLE User_Favourite_Artwork(
  UserID int,
  ArtworkID int,
  FOREIGN KEY (userID) REFERENCES userInformation(userID),
  FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID));


CREATE TABLE Gallery (
  GalleryID int primary key,
  name varchar,
  Description text,
  location varchar,
  curator varchar,
  openingHours decimal,
  ArtistID int,
  FOREIGN KEY (artistID) REFERENCES artist(artistID), 
);

CREATE TABLE Artwork_Gallery (
  ArtworkID int,
  GalleryID int,
  FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID),
  FOREIGN KEY (GalleryID) REFERENCES Gallery(GalleryID));
