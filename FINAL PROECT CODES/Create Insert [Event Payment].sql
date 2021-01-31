CREATE PROCEDURE AddUpdateDeleteEventPayment /**/(
    	@payment_no int,
		@payment_amount varchar(255),
		@event_id int,
		@bank_card_number int,
		@Attendee_ID int
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Event_Payment (
			Payment_Amount,
			Event_ID,
			Bank_Card_Number,
			Attendee_ID)
						
            VALUES     (
			@payment_amount,
			@event_ID,
			@bank_card_number,
			@attendee_id)

        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Event_Payment
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE Event_Payment  
            SET Payment_Amount= @payment_amount,
				Event_ID = @event_id,
				Bank_Card_Number = @bank_card_number,
				Attendee_ID = @attendee_id)

				 
            WHERE Payment_No = @payment_no  
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Event_Payment  
            WHERE  Payment_No = @payment_no 
        END  
  END   