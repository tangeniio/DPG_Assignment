CREATE PROCEDURE AddUpdateDeleteAttendee /**/(
    	@attendee_ID int IDENTITY(2021,1) PRIMARY KEY,
		@business_Reg_No int,
		@notification_No int,
	    @auth_Password varchar(255),
	    @business_Owner varchar (255),
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Attendee  (
					Attendee_ID,
					Business_Reg_No,
					Notification_No,
					Auth_Password,
					Business_Owner
				 )

						
            VALUES     (
				@business_Reg_No,
				@notification_No,
				@auth_Password,
				@business_Owner
			)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Attendee  
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE Attendee  
            SET  Attendee_ID = @attendee_ID,
				Business_Reg_No = @business_Reg_No,
				Notification_No = @notification_No,
				Auth_Password = @auth_Password,
				Business_Owner = @business_Owner
				 
            WHERE  Attendee_ID = @attendee_ID  
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Attendee  
            WHERE  Attendee_ID = @attendee_ID 
        END  
  END   
