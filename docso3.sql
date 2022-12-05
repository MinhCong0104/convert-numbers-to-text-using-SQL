/*CREATE FUNCTION DOCSO1(@so int)
RETURNS nvarchar(10) AS
BEGIN
	DECLARE @doc nvarchar(10)
		IF @so = 0 SET @doc = 'không'
		ELSE IF @so = 1 SET @doc = 'một'
		ELSE IF @so = 2 SET @doc = 'hai'
		ELSE IF @so = 3 SET @doc = 'ba'
		ELSE IF @so = 4 SET @doc = 'bốn'
		ELSE IF @so = 5 SET @doc = 'năm'
		ELSE IF @so = 6 SET @doc = 'sáu'
		ELSE IF @so = 7 SET @doc = 'bảy'
		ELSE IF @so = 8 SET @doc = 'tám'
		ELSE IF @so = 9 SET @doc = 'chín'
	RETURN @doc
END*/

/*CREATE FUNCTION DOCSO3(@so int)
RETURNS nvarchar(60) AS
BEGIN
	DECLARE @a nvarchar(20), @b nvarchar(20), @c nvarchar(20), 
			@doc nvarchar(60), @chuc int, @donvi int

	IF @so = 0 SET @doc = 'không'
	ELSE IF @so%100 = 0 SET @doc = dbo.DOCSO1(@so/100) + ' trăm'
	ELSE BEGIN
		IF @so/100 = 0 SET @a = ''
		ELSE SET @a = dbo.DOCSO1(@so/100) + ' trăm'

		SET @chuc = @so%100
		IF @chuc/10 = 0 AND @so/100 > 0 SET @b = 'lẻ'
		ELSE IF @chuc/10 = 0 AND @so/100 = 0 SET @b = ''
		ELSE IF @chuc/10 = 1 SET @b= 'mười'
		ELSE SET @b = dbo.DOCSO1(@chuc/10) + ' mươi'

		SET @donvi = @chuc%10
		IF @donvi = 0 SET @c = ''
		ELSE SET @c = dbo.DOCSO1(@donvi)

		SET @doc = @a + ' ' + @b + ' ' + @c
	END
	RETURN @doc
END*/

SELECT dbo.DOCSO1(3)
SELECT dbo.DOCSO3(32)
SELECT dbo.DOCSO3(986)