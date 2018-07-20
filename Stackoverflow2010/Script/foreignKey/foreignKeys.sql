if 
     (  object_id('[dbo].[Badges]')  is not null )  
 and  (  object_id('[dbo].[Users]')  is not null )  
 and  (  object_id('[FK_Badges_User]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Badges]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[Users]') 
) 
begin
    ALTER TABLE [dbo].[Badges]
        ADD CONSTRAINT [FK_Badges_User]
        FOREIGN KEY ([UserId])
        REFERENCES [dbo].[Users]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[Comments]')  is not null )    
 and  (  object_id('[dbo].[Users]')  is not null )  
 and  (  object_id('[FK_Comments_User]')  is null )     
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Comments]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[Users]') 
) 
begin
    ALTER TABLE [dbo].[Comments]
        ADD CONSTRAINT [FK_Comments_User]
        FOREIGN KEY ([UserId])
        REFERENCES [dbo].[Users]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[PostLinks]')  is not null )   
 and  (  object_id('[dbo].[Posts]')  is not null )  
 and  (  object_id('[FK_PostLinks_Posts]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[PostLinks]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[Posts]') 
) 
begin
    ALTER TABLE [dbo].[PostLinks]
        ADD CONSTRAINT [FK_PostLinks_Posts]
        FOREIGN KEY ([PostId])
        REFERENCES [dbo].[Posts]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[PostLinks]')  is not null )   
 and  (  object_id('[dbo].[LinkTypes]')  is not null )  
 and  (  object_id('[FK_PostLinks_LinkTypes]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[PostLinks]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[LinkTypes]') 
) 
begin
    ALTER TABLE [dbo].[PostLinks]
        ADD CONSTRAINT [FK_PostLinks_LinkTypes]
        FOREIGN KEY ([LinkTypeId])
        REFERENCES [dbo].[LinkTypes]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[Posts]')  is not null )   
 and  (  object_id('[dbo].[PostTypes]')  is not null )  
 and  (  object_id('[FK_Posts_PostTypes]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Posts]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[PostTypes]') 
) 
begin
    ALTER TABLE [dbo].[Posts]
        ADD CONSTRAINT [FK_Posts_PostTypes]
        FOREIGN KEY ([PostTypeId])
        REFERENCES [dbo].[PostTypes]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[Votes]')  is not null )   
 and  (  object_id('[dbo].[Posts]')  is not null )  
 and  (  object_id('[FK_Votes_Posts]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Votes]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[Posts]') 
) 
begin
    ALTER TABLE [dbo].[Votes]
        ADD CONSTRAINT [FK_Votes_Posts]
        FOREIGN KEY ([PostId])
        REFERENCES [dbo].[Posts]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[Votes]')  is not null )   
 and  (  object_id('[dbo].[Users]')  is not null )  
 and  (  object_id('[FK_Votes_Users]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Votes]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[Users]') 
) 
begin
    ALTER TABLE [dbo].[Votes]
        ADD CONSTRAINT [FK_Votes_Users]
        FOREIGN KEY ([UserId])
        REFERENCES [dbo].[Users]
        ([Id])
end
 
 
if 
     (  object_id('[dbo].[Votes]')  is not null )   
 and  (  object_id('[dbo].[VoteTypes]')  is not null )  
 and  (  object_id('[FK_Votes_VoteTypes]')  is null )   
 and  not exists 
 ( 
   select * 
   from   sys.foreign_keys tblSFK 
   where  tblSFK.parent_object_id =  object_id('[dbo].[Votes]') 
   and    tblSFK.referenced_object_id =  object_id('[dbo].[VoteTypes]') 
) 
begin
    ALTER TABLE [dbo].[Votes]
        ADD CONSTRAINT [FK_Votes_VoteTypes]
        FOREIGN KEY ([VoteTypeId])
        REFERENCES [dbo].[VoteTypes]
        ([Id])
end
 
 
