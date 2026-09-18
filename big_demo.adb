pragma Ada_2022;

package body Big_Demo is
   use BI;

   function From_Int (N : Integer) return Big_Integer is
   begin
      return To_Big_Integer (N);
   end From_Int;

   function To_Int (N : Big_Integer) return Integer is
   begin
      return To_Integer (N);
   end To_Int;

   function Factorial (N : Natural) return Big_Integer is
      Acc : Big_Integer := To_Big_Integer (1);
   begin
      for I in 2 .. N loop
         Acc := Acc * To_Big_Integer (I);
      end loop;
      return Acc;
   end Factorial;

   function Pow2 (Exp : Natural) return Big_Integer is
   begin
      return To_Big_Integer (2) ** Exp;
   end Pow2;

   function Image (N : Big_Integer) return String is
      Raw : constant String := To_String (N);
   begin
      if Raw'Length > 0 and then Raw (Raw'First) = ' ' then
         return Raw (Raw'First + 1 .. Raw'Last);
      end if;
      return Raw;
   end Image;

end Big_Demo;
