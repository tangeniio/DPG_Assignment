CREATE PROCEDURE AddUpdateDeleteSystemAdmin /**/ (
	Staff_ID int IDENTITY(3031,1) PRIMARY KEY,
	Auth_Password varchar(255),
	ID_Number int
		) 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO SystemAdmin(
				Staff_ID,
				Auth_Password,
				ID_Number
				)
						
            VALUES     (Auth_Password varchar(255),
						ID_Number int)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   SytemAdmin  
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE SytemAdmin 
            SET  Staff_ID = @staff_ID,
				Auth_Password =@auth_Password,
				ID_Number = @id_Number
				 
            WHERE  Staff_ID = @staff_id
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM SystemAdmin  
            WHERE  Staff_ID = @staff_ID
        END  
  END   