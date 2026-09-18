--  Ada 2022 topic: Ada.Numerics.Big_Numbers.Big_Integers.
pragma Ada_2022;

with Ada.Numerics.Big_Numbers.Big_Integers;

package Big_Demo is

   package BI renames Ada.Numerics.Big_Numbers.Big_Integers;

   function From_Int (N : Integer) return BI.Big_Integer;
   function To_Int (N : BI.Big_Integer) return Integer;
   --  Raises Constraint_Error if out of Integer range.

   function Factorial (N : Natural) return BI.Big_Integer;
   function Pow2 (Exp : Natural) return BI.Big_Integer;
   function Image (N : BI.Big_Integer) return String;

end Big_Demo;
