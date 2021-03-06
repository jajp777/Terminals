USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[InsertCredentialBase]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCredentialBase]
	(
  @UserName nvarchar(255),
  @Domain nvarchar(255),
  @EncryptedPassword nvarchar(max)
	)
AS
	insert into CredentialBase 
  (UserName, Domain, EncryptedPassword)
  values  
  (@UserName, @Domain, @EncryptedPassword)

  select SCOPE_IDENTITY() as Id
GO
