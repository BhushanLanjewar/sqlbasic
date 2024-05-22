select * from dept

-- check revenue > 60000
create or replace function checkRevenue(dept_revenue int)
returns varchar as $$
declare
  result varchar;
begin
   if dept_revenue > 60000 then
     result := 'PROFIT';
   else
     result := 'LOSS';  
   end if;
   
   return result;
end
$$ LANGUAGE plpgsql

select checkRevenue(dept_revenue) from dept


-- check checkAge function to have 4 condition
  
create or replace function checkAge(age int)
returns VARCHAR AS $$
declare
  result VARCHAR;
begin
  if age <= 18 then
    result := 'JUNIOR-G';
  elsif age <= 35 then
    result := 'ADULT';
  elsif age <= 50 then
    result := 'SENIOR';
  else
    result := 'SUPER SENIOR';
  end if;
  
  return result;
end
$$ LANGUAGE plpgsql


select checkAge(age::int) from emp

select * from emp


  


