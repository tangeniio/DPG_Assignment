USE [DPG_Assignment_Database]
GO
/****** Object:  Trigger [dbo].[Status_Of_Registration]    Script Date: 31/01/2021 1:51:58 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Status_Of_Registration] ON [dbo].[Registration]
   AFTER INSERT,UPDATE
AS 
BEGIN
	
	declare @Status_of_Reg VARCHAR(255);
	
	SELECT @Status_of_Reg = Registration_Status.Status_of_Reg from inserted Registration_Status;
	

	IF @Status_of_Reg = 'Registered'
	PRINT 'Thank you for Registering, please note the our Event dates are as Follow *CyberTronix Internet Event 15 Feb*, *Database Manipulation Internet Event 17 March*, *Programing Understandinng Event 31 March*';

	ELSE
	PRINT 'Please Complete Registration, please note the our Event dates are as Follow *CyberTronix Internet Event 15 Feb*, *Database Manipulation Internet Event 17 March*, *Programing Understandinng Event 31 March*';

	
	END