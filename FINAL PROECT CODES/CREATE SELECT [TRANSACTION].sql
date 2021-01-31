CREATE PROCEDURE AddUpdateDeleterTransaction (
		@transaction_id int,
		@transaction_name varchar(255),
		@transaction_status varchar(255),
		@payment_no int,
		@bank_card_number int,
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Transaction_(
			Transaction_Name,
			Transaction_Status,
			Payment_No,
			Bank_Card_Number)
						
            VALUES (
			@transaction_name,
			@transaction_status,
			@payment_no,
			@bank_card_number)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Transaction_
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Transaction_
            SET  Transaction_Name = @transaction_name,
				 Transaction_Status = @transaction_status,
				 Payment_No = @payment_no,
				 Bank_Card_Number = @bank_card_number
				 
            WHERE  Transaction_ID = @transaction_id
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Transaction_ 
			WHERE  Transaction_ID = @transaction_id
        END  
  END   