select * from  Job_opening
select * from Department
select * from location
select * from Employee_Gender
select * from Employee

--To print null foreign key
select d.departmentid from department d
left join JOB_OPENING JO on jo.departmentid = d.departmentid
where d.departmentid not in (select DEPARTMENTID from JOB_OPENING )


select d.DEPARTMENTID , jo.DEPARTMENTID from department d
left join JOB_OPENING JO on jo.departmentid = d.departmentid
where JO.departmentid is  null
--------------------------

----- To alter table---------
update E
set Gender = (case when Gender = 'Male' then 'Female'
				else 'Male' end)
			from Employee E