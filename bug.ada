```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (others => 0); -- Initialize array

   function MyFunc(X : Integer) return Integer is
   begin
      if X > 5 then
         return X * 2;
      else
         return X / 2; -- Potential error if X is odd
      end if;
   end MyFunc;

begin
   for I in MyArr'Range loop
      MyArr(I) := MyFunc(I);
   end loop;
   -- Further processing of MyArr
end Example;
```