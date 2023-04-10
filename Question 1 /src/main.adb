-- Question 1(b)
pragma SPARK_Mode (On);


with AS_IO_Wrapper;  use AS_IO_Wrapper;
with Decrement;  use Decrement;


procedure Main is
   i1, i2, i3 : Integer;
   inValues : inputRecordType;
   outValues : inputRecordType;
   User_Input : String(1 .. 20);
   Last : Integer;

begin
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;
   loop
      -- looping through every input to make sure that they range from 0 to 9
      loop
         AS_Put("Enter a number from 0 .. 9: ");
         AS_Get(i1,"Please type in an integer; please try again");
         exit when i1 in 0 .. 9;
         AS_Put_Line("Please enter a number between 0 and 9");
      end loop;
      loop
         AS_Put("Enter a number from 0 .. 9: ");
         AS_Get(i2,"Please type in an integer; please try again");
         exit when i2 in 0 .. 9;
         AS_Put_Line("Please enter a number between 0 and 9");
      end loop;
      loop
         AS_Put("Enter a number from 0 .. 9: ");
         AS_Get(i3,"Please type in an integer; please try again");
         exit when i3 in 0 .. 9;
         AS_Put_Line("Please enter a number between 0 and 9");
      end loop;
     -- indicating that all the inputs are from inValues so it can store it as a record.
     inValues := (rangeNumber(i1),rangeNumber(i2),rangeNumber(i3));
     -- printing and getting the function for the invalues and indicating its outvalues
     AS_Put("The result of the function  is ");
     outValues := decFunction(inValues);
     AS_Put("o1 : ");
     AS_Put_Line(Integer(OutValues.i1));
     AS_Put("o2 : ");
     AS_Put_Line(Integer(OutValues.i2));
     AS_Put("o3 : ");
     AS_Put_Line(Integer(OutValues.i3));
     -- printing and getting the procedure for the invalues and indicating its outvalues
     AS_Put("The result of the Procedure  is ");
     decProcedure(inputRecordType(inValues), OutValues);
     AS_Put("o1 : ");
     AS_Put_Line(Integer(OutValues.i1));
     AS_Put("o2 : ");
     AS_Put_Line(Integer(OutValues.i2));
     AS_Put("o3 : ");
     AS_Put_Line(Integer(OutValues.i3));
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
