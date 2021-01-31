CREATE PROCEDURE AddUpdateDeleteSystemAdmin /**/ (
	@staff_id int,
	@auth_password varchar(255),
	@id_number int
		) 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO SystemAdmin(
				Auth_Password,
				ID_Number
				)
						
            VALUES     (
		    	@auth_password,
			@id_number int)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   SytemAdmin  
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE SytemAdmin 
            SET  Staff_ID = @staff_id,
		 Auth_Password = @auth_password,
		 ID_Number = @id_Number
				 
            WHERE  Staff_ID = @staff_id
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM SystemAdmin  
            WHERE  Staff_ID = @staff_ID
        END  
  END   
