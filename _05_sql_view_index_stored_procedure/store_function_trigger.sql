
-- procedure

delimiter //
create procedure find_customer(p_keyword varchar(10))
begin 
select * from khach_hang where ho_ten like concat("%",p_keyword,"%");
end; //
delimiter ;

call find_customer("");

-- FUNCTION
DELIMITER $$

CREATE FUNCTION CustomerLevel(
	credit DECIMAL(10,2)
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE customerLevel VARCHAR(20);

    IF credit > 50000 THEN
		SET customerLevel = 'PLATINUM';
    ELSEIF (credit >= 50000 AND 
			credit <= 10000) THEN
        SET customerLevel = 'GOLD';
    ELSEIF credit < 10000 THEN
        SET customerLevel = 'SILVER';
    END IF;
	-- return the customer level
	RETURN (customerLevel);
END$$
DELIMITER ;

-- MySQL Triggers là một đối tượng CSDL trong MySQL được liên kết với một bảng.
--  Khi một sự kiện INSERT, UPDATE, DELETE xảy ra trong bảng CSDL thì Trigger sẽ
--  được kích hoạt và thực thi một nhiệm vụ mà bạn mong muốn.
--  Triggers có thể được kích hoạt trước và sau khi sự kiện đó được thực hiện