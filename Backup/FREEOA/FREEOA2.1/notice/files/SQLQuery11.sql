
create proc Proc_UserPaperDelete
@UserID varchar(50),
@PaperID int
as
delete useranswer where userid=@UserID and PaperID=@PaperID
go
