CREATE PROCEDURE AddUpdateDeleterAuthentication (
		@auth_password varchar(255),
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Authentication_(
				 Auth_Password)
						
            VALUES (
			@auth_password)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Authentication_
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Authentication_
            SET  Auth_Password = @auth_password 
				 
            WHERE  Auth_Password = @auth_password
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Authentication_ 
			WHERE  Auth_Password = @auth_password
        END  
  END   