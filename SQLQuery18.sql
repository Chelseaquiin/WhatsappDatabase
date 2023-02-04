use MockWhatsApp
go

INSERT INTO Users (FullName, PhoneNumber, Bio) VALUES 
		('Uzoamaka', '07011111113', 'I can fly'),
		('Chikki','07022222223', 'King Harpy'),
		('Ugonna','07033333334', 'The Knight'),
		('Ifeoma','07044444445', 'The Lord gives beauty for ashes'),
		('Emem','07055555556', 'Call me if it is important');

		

INSERT INTO Conversations(GroupName) VALUES 
		('Bezao'),
		('Learnable'),
		('JV'),
		('HoH'),
		('Family');

INSERT INTO GroupMember(UserID, GroupID) VALUES 
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5);

INSERT INTO Messages (ChatID, SenderID, Contents) VALUES 
		(2, 1, 'It will be alright in the end. If it is not alright, then it is not the end'),
		(3, 2, 'Bag that PHD like it is nothing, girl. Fly!!'),
		(4, 3, 'May our baby bring nothing but Joy to you always'),
		(5, 4, 'Pending gist o, nne'),
		(6, 5, 'This year might end without us saying a word to ourselves. And I am not being dramatic');

SELECT
Conversations.GroupID, Conversations.GroupName, Users.FullName, Users.Bio, Messages.Contents
FROM ((GroupMember
Inner join Conversations on
GroupMember.GroupID = Conversations.GroupID)
INNER JOIN Users on 
GroupMember.UserID = Users.UserID)
Inner join Messages on
GroupMember.UserID = Messages.SenderID;
