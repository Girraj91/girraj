use batch19_6621
select * from student

alter proc sp_student
@action varchar(50)=null,
@sid int=0, 
@name varchar(50)=null,  
@rollno int=0,  
@mobile bigint=0,  
@age int=0 
as
begin
	if(@action='INSERT')
		begin
				insert into student(name,rollno,mobileno,age)values(@name,@rollno,@mobile,@age)
		end
		else if(@action='UPDATE')
		begin
				update student set name= @name,rollno= @rollno,mobileno= @mobile,age= @age  where id=@sid 
		end
		else if(@action='DELETE')
		begin
				delete from student where id=@sid
		end
		else if(@action='EDIT')
		begin
				select * from student where id=@sid
		end
		else if(@action='SHOW')
		begin
			select * from student  
		end
end























sp_helptext sp_show

CREATE procedure sp_insert  
@name varchar(50),  
@rollno int,  
@mobile bigint,  
@age int  
as  
begin  
insert into student(name,rollno,mobileno,age)values(@name,@rollno,@mobile,@age)  
end

create proc sp_update  
@name varchar(50),  
@rollno int,  
@mobile bigint,  
@age int,  
@sid int  
as  
begin  
update student set name= @name,rollno= @rollno,mobileno= @mobile,age= @age  where id=@sid  
end



create proc sp_delete  
@studentid int  
as  
begin  
delete from student where id=@studentid   
end


CREATE proc sp_edit  
@id int  
as  
begin  
select * from student where id=@id  
end

create proc sp_Show  
as  
begin  
select * from student  
end