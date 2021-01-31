USE [DPG_Assignment_Database]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER UserAuthenticae ON Authentication_
   AFTER INSERT,UPDATE
AS 
BEGIN
	
	declare @password VARCHAR(255);
	declare @user_id int;
	declare @errormessage VARCHAR(255) = 'Error 101';
	
	BEGIN TRY
	SELECT Auth_Password,Attendee_ID, Staff_ID
	FROM Authentication_
	WHERE @password = Auth_Password AND @user_id = Attendee_ID OR @user_id = Staff_ID

	IF (@password = @password AND @user_id = @user_id)
	PRINT 'User Login Successful'
	ELSE
	PRINT 'Unsuccesful Login'
	END TRY

	BEGIN CATCH
	PRINT @errormessage
	END CATCH;
END
