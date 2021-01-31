CREATE PROCEDURE AddUpdateDeleterRegistration (
		@reg_id int,
		@status_of_reg varchar(255),
		@attendee_id int,
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Registration(
				 Status_of_Reg)
						
            VALUES (
			@status_of_reg)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Registration
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Registration
            SET  Status_of_Reg = @status_of_reg 
				 
            WHERE  Reg_ID = @reg_id
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Registration 
			WHERE  Reg_ID = @reg_id
        END  
  END   