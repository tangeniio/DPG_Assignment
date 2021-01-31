CREATE PROCEDURE AddUpdateDeleteBusinessInfo (
		@business_reg_no int,
        @business_name varchar (255),
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO BusinessInfo(
				 Business_Name)
						
            VALUES (
			@business_name)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   BusinessInfo 
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE BusinessInfo  
            SET  Business_Name = @business_name 
				 
            WHERE  Business_Reg_No = @business_reg_no
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM BusinessInfo 
            WHERE  Business_Reg_No = @business_reg_no
        END  
  END   