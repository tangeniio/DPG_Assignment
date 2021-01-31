USE [DPG_Assignment_Database]
GO
/****** Object:  Trigger [dbo].[Event_Payment_Transaction]    Script Date: 31/01/2021 1:14:54 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Event_Payment_Transaction] ON [dbo].[Event_Payment]
   AFTER INSERT,UPDATE
AS 
BEGIN
	
	declare @Payment_Amount VARCHAR(255);
	


	SELECT @Payment_Amount = Event_Payment.Payment_Amount from inserted Event_Payment;
	

        IF @Payment_Amount < 500
	PRINT 'Event Payment Amount is NS500 you have not paid the full amount //You Are A Bad Member';

	ELSE IF @Payment_Amount > 500
	PRINT 'Event Payment Amount is NS500 you have paid Over the full amount//You Are A Good Member';

	
	ELSE IF @Payment_Amount = 0
	PRINT 'Please Pay Event Payment Amount it is NS500 //You Are A Bad Member';

	ELSE 
	PRINT 'Please Pay Event Payment Amount it is NS500 //You Are A Bad Member';
	
	END
	GO
