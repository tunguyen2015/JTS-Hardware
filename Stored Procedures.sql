create procedure AddCategory
@Title nvarchar(max), @ImageUrl nvarchar(max)
as
insert into Category(Title, ImageUrl) values (@Title, @ImageUrl)

create procedure AddProduct
@CategoryID int, @Title nvarchar(max), @Short nvarchar(max), @Long nvarchar(max), @Image nvarchar(max), @Price money
as
insert into Product(CategoryID, Title, ShortDescription, LongDescription, ImageUrl, Price)
values (@CategoryID, @Title, @Short, @Long, @Image, @Price)

create procedure [dbo].[DeleteCategory]
@ID int
as
delete from Category where CategoryID=@ID

create procedure [dbo].[DeleteProductByCategory]
@ID int
as
delete from Product where CategoryID=@ID

create procedure [dbo].[DeleteProductByID]
@ID int
as
delete from Product where ProductID=@ID

create procedure [dbo].[GetAllCategory]
as
select * from Category

create procedure [dbo].[GetAllProduct]
as
select * from Product

create procedure [dbo].[GetCategoryByID]
@CategoryID int
as
select * from Category where CategoryID = @CategoryID

create procedure [dbo].[GetProductByCategory]
@ID int
as
select * from Product where CategoryID=@ID

create procedure [dbo].[GetProductByID]
@ProductId int
as
select * from Product where ProductID=@ProductId

create procedure [dbo].[UpdateCategory]
@ID int, @Title nvarchar(max), @ImageUrl nvarchar(max)
as
update Category set Title=@Title, ImageUrl=@ImageUrl
where CategoryID=@ID

create procedure [dbo].[UpdateProduct]
@ID int, @CateID int, @Title nvarchar(max), @ShortD nvarchar(max), @LongD nvarchar(max), 
@Image nvarchar(max), @Price decimal
as
update Product set CategoryID=@CateID, Title=@Title, ShortDescription=@ShortD, 
LongDescription=@LongD, ImageUrl=@Image, Price=@Price
where ProductID=@ID

create procedure GetSixNewestProduct
as
select top 6 * from Product order by ProductID

create procedure GetSixFeaturedProduct
as
select top 6 * from Product order by Viewed desc

create procedure GetFourNewestProductByCategory
@ID int
as
select top 4 * from Product where ca order by ProductID desc

create procedure CountProductOfACategory
@ID int
as
select COUNT(*) as NumOfProduct from Product where CategoryID = @ID

create procedure AddView
@id int
AS
Update Product SET Viewed = Viewed + 1 Where productID = @id