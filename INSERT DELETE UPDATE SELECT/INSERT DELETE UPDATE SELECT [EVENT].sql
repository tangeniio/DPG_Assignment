CREATE PROCEDURE AddUpdateDeleteEvents (
		@event_id int,
    	@event_name varchar(255),
    	@event_location varchar(255),
		@event_date date,
    	@event_time time,
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Event_  (
				 Event_Name, 
				 Event_Location, 
				 Event_Date,
				 Event_Time)
						
            VALUES     (
			@event_name, 
			@event_location, 
			@event_date, 
			@event_time)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Event_  
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Event_  
            SET  Event_Name = @event_name, 
				 Event_Location = @event_location, 
				 Event_Date = @event_date,
				 Event_Time = @event_time
				 
            WHERE  Event_ID = @Event_ID  
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Event_  
            WHERE  Event_ID = @event_id
        END  
  END   