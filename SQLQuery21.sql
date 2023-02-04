use MockWhatsApp
go

CREATE VIEW [ChatDetails] AS
SELECT 
	.UserName AS SenderName,
	Receiver.UserName AS ReceiverName,
	m.Message AS MessagesSent,
	m.Timestamp
FROM 
	Messages m
	JOIN Chats chat ON m.ChatID = chat.ChatID
	JOIN Users Sender ON chat.SenderID = Sender.UserID
	JOIN Users Receiver ON chat.ReceiverID = Receiver.UserID;


SELECT * FROM [ChatDetails]