use MockWhatsApp
go

CREATE TABLE Users (
		UserID int PRIMARY KEY IDENTITY (1,1),
		FullName varchar(50) NOT NULL,
		PhoneNumber char(13) NOT NULL unique,
		Bio nvarchar(255),

);

CREATE TABLE Conversations (
		GroupID int PRIMARY KEY IDENTITY (1,1),
		GroupName int NOT NULL

);
CREATE TABLE GroupMember (
		UserID int Not Null,
		GroupID int NOT NULL,
		joined datetime default current_timestamp,
		leftGroup datetime default current_timestamp,
		FOREIGN KEY (UserID) REFERENCES Users(UserID),
		FOREIGN KEY (GroupID) REFERENCES Users(UserID)

);

CREATE TABLE Messages (
		MessageID int PRIMARY KEY IDENTITY (1,1),
		ChatID int NOT NULL,
		SenderID int NOT NULL,
		Contents varchar(max) NOT NULL,
		SentAt datetime default CURRENT_TIMESTAMP,
		FOREIGN KEY (ChatID) REFERENCES Conversations(GroupID),
		FOREIGN KEY (SenderID) REFERENCES Users(UserID)

);

