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
			Bank_Card_Number)
						
            VALUES     (
			@payment_amount,
			@bank_card_number)

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
				Bank_Card_Number = @bank_card_number,
				 
            WHERE Payment_No = @payment_no  
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Event_Payment  
            WHERE  Payment_No = @payment_no 
        END  
  END   
