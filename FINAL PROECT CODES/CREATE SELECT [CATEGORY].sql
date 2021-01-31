CREATE PROCEDURE AddUpdateDeleteCategory (
		@category_id int,
		@category_name varchar(255),
		@event_id int,
		@statementtype NVARCHAR(20) = '') 
AS  
  BEGIN  
      IF @statementtype = 'Insert'  
        BEGIN  
            INSERT INTO Category(
				 Category_Name)
						
            VALUES (
			@category_name)
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Category
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Category
            SET  Category_Name = @category_name 
				 
            WHERE  Category_ID = @category_id
        END  
		
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Category 
            WHERE  Category_ID = @category_id
        END  
  END   