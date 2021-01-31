CREATE PROCEDURE AddUpdateDeleteResidence/**/ (
		@physical_Address varchar(255),
		@house_No varchar(255),
		@suburb varchar(255),
		@region varchar(255)
		@statementtype NVARCHAR(20) = '')
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Residence(
			Physical_Address 
			House_No,
			Suburb,
			Region)
						
            VALUES     (
				@physical_address
				@house_no,
				@suburb,
				@region)
        END  
  
      IF @Statementtype = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Residence  
        END  
  
      IF @Statementtype = 'Update'  
        BEGIN  
            UPDATE Residence
            SET  Physical_Address = @physical_address
				 House_No = @house_no,
				 Suburb = @suburb,
				 Region = @region
				 
            WHERE  Physical_Address = @physical_address
        END  
		
      ELSE IF @Statementtype = 'Delete'  
        BEGIN  
            DELETE FROM Residence 
            WHERE  Physical_Adress = @phyical_address
        END  
  END   
