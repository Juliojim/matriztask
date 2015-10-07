with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   Matriz1 : array (1..10,1..10) of Integer;
   Matriz2 : array (1..10,1..10) of Integer;
   Matriz3 : array (1..10,1..10) of Integer;

   task LlenaMatriz;

   task Multiplica;

   task MulTotal;

   task body LlenaMatriz is
    begin
     for i in 1..10 loop
      for j in 1..10 loop
         Matriz1 (i,j):= 1;
         Matriz2 (i,j):= 1;
         end loop;
      end loop;

      for i in 1..10 loop
         for j in 1..10 loop
            Matriz3(i,j) :=0;
         end loop;
         end loop;
   end LlenaMatriz;

   task body Multiplica is
   begin
       for i in 1..10 loop
     for j in 1..10 loop
         for k in 1..10  loop
     matriz3(i,j) := matriz3(i,j) +  matriz1(i,k) * matriz2(k,j);
         end loop;
      end loop;
   end loop;
   end Multiplica;

   task body MulTotal is
   begin
     Put_Line("El resultado de la multiplicacion de la matriz es :");
   Put_Line("");
   for i in 1..10 loop
      for j in 1..10 loop
        Put(matriz3(i,j));
      end loop;
      Put_Line("");
      end loop;
      end MulTotal;
begin
   Put_Line("Programa de matrices task");

   null;
end Main;
