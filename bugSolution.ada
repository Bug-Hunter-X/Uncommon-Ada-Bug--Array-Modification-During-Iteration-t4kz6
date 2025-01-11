```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Temp_Arr : My_Array;
begin
   -- Create a temporary array to store modified values
   Temp_Arr := My_Arr;
   for I in My_Arr'Range loop
      if Temp_Arr(I) = 5 then
         Temp_Arr(I) := Temp_Arr(I) + 1;
      end if;
   end loop;
   My_Arr := Temp_Arr;
   for I in My_Arr'Range loop
      Put_Line(Integer'Image(My_Arr(I)));
   end loop;
exception
   when others =>
      Put_Line("Error");
end Example_Solution;
```