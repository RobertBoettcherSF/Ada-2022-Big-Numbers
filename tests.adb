pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Big_Demo; use Big_Demo;
with Ada.Numerics.Big_Numbers.Big_Integers;

procedure Tests is
   use Ada.Numerics.Big_Numbers.Big_Integers;
   F20 : constant Big_Integer := Factorial (20);
begin
   Assert (To_Int (From_Int (42)) = 42);
   Put_Line ("PASS To_Big_Integer / To_Integer");

   Assert (Image (Pow2 (10)) = "1024");
   Put_Line ("PASS power of two");

   --  20! = 2432902008176640000
   Assert (Image (F20) = "2432902008176640000");
   Put_Line ("PASS Factorial(20) beyond Integer range");

   Assert (From_Int (100) + From_Int (23) = From_Int (123));
   Assert (From_Int (10) * From_Int (10) = From_Int (100));
   Put_Line ("PASS Big_Integer + and *");

   Put_Line ("All Big Numbers topic tests passed.");
end Tests;
