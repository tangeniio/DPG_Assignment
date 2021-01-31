CREATE PROCEDURE AddUpdateDeleteBankCard/**/ (
	@bank_card_number int IDENTITY(1001,1) PRIMARY KEY,
    @cvv_code int,
    @attendee_id int
	@statementtype NVARCHAR(20) = '') 

AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Bank_Card(
				Bank_Card_Number,
				Cvv_Code,
				Attendee_ID)
						
            VALUES     (@bank_card_number,
						cvv_code, attendee_id)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM  Bank_Card  
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE Bank_Card 
            SET Bank_Card_Number = @bank_card_number,
				Cvv_Code = @ccv_code,
				Attendee_ID = @attendee_id
				 
            WHERE  Bank_Card_Number = @bank_card_number
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Bank_Card  
            WHERE  Bank_Card_Number = @bank_card_number
        END  
  END   