CREATE PROCEDURE AddUpdateDeleteNotification /**/(
    		@notification_no int,
		@notification_msg varchar (255),
		@staff_id int,
		@attendee_id int
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Notification_ (Notification_Msg)
						
            VALUES     (@notification_msg)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Notification_
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE Notification_  
            SET Notification_Msg = @notification_msg

				 
            WHERE Notification_No = @notification_no  
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Notification_  
            WHERE  Notification_No = @notification_no 
        END  
  END   
