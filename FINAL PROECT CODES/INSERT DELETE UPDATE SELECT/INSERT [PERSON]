CREATE PROCEDURE AddUpdateDeletePerson /**/ (
		@id_number int,
    	@full_name varchar(255),
    	@email varchar(255),
		@cell_no int,
    	@date_of_birth date,
		@physicall_address varchar(255),
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Person(
				ID_Number,
				Full_Name,
				Email,
				Cell_No,
				Date_Of_Birth,
				Physical_Address)
						
            VALUES     (
			@full_name,
    		@email,
			@cell_no,
    		@date_of_birth,
			@physicall_address)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Person  
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Person 
            SET  Full_Name = @full_name,
				 Email = @email,
				 Cell_No = @cell_no,
				 Date_Of_Birth = @date_of_birth,
				 Physical_Address = @physicall_address
				 
            WHERE  ID_Number = @id_number
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Person  
            WHERE  ID_Number = @id_number
        END  
  END   
