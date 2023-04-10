-- Question 2(b)
pragma SPARK_Mode;

with AS_IO_Wrapper;  use AS_IO_Wrapper;
with ddqr;    use  ddqr;

procedure Main is
   Input : Integer;
   dividend, divisor : Positive;
   quotient, remainder : Natural;
   User_Input : String(1 .. 20);
   Last: Natural;
begin
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;
   loop
      -- looping through every input (dividend and divisor) to make sure that they are less than 0
      loop
         AS_PUT("Type in a number(dividend): ");
         AS_Get(Input,"Please type in an integer; please try again");
         exit when Input > 0;
      end loop;
      -- indicating that the first input is the dividend
      dividend := Input;
      loop
         AS_PUT("Type in a number(divisor): ");
         AS_Get(Input,"Please type in an integer; please try again");
         exit when Input > 0;
      end loop;
       -- indicating that the second input is the divisor
      divisor := Input;
      AS_Put_Line;
      -- formula to solve the problem and printing the quotient and remainder.
      formula(dividend, divisor, quotient, remainder);
      AS_Put("Quotient   = ");
      AS_Put_Line(quotient);
      AS_Put("Remainder = ");
      AS_Put_Line(remainder);
      -- loop to ask if the user wants to try the progran again or not.
      loop
        As_Put("Do you want to try again (y/n)? ");
        As_Get_Line(User_Input, Last);
        exit when Last > 0;
        As_Put_Line("Please enter a non-empty string");
     end loop;
     exit when User_Input(1 .. 1) = "n";
   end loop;
end Main;
