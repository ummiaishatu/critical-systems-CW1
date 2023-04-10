pragma SPARK_Mode;

package body decrement is

   -- Question 1(a)
   -- both the invalues and outvalues are recordtype which has three inputs and return three outputs.
   -- accepts the three digits and produces its outputs based on the program.
   procedure decProcedure (inValues : in inputRecordType; outValues : out inputRecordType) is
   begin
      if inValues.i3 > 0 then
          outValues :=  inputRecordType'(i1 => inValues.i1, i2 => inValues.i2, i3 => inValues.i3 - 1);
      elsif inValues.i2 > 0 then
           outValues := inputRecordType'(i1 => inValues.i1, i2 => inValues.i2 - 1, i3 => 9);
      elsif inValues.i1 > 0 then
         outValues :=  inputRecordType'(i1 => inValues.i1 - 1, i2 => 9, i3 => 9);
      else
            outValues :=  inputRecordType'(i1 => 9, i2 => 9, i3 => 9);
      end if;
   end decProcedure;

   -- Question 1(e)
   -- accepts only the invalues and returns the record type.
   -- works like the procedure.
   function decFunction (inValues : inputRecordType) return inputRecordType is
   begin
      if inValues.i3 > 0 then
         return
           inputRecordType'(i1 => inValues.i1, i2 => inValues.i2, i3 => inValues.i3 - 1);
      elsif inValues.i2 > 0 then
         return
           inputRecordType'(i1 => inValues.i1, i2 => inValues.i2 - 1, i3 => 9);
      elsif inValues.i1 > 0 then
         return
           inputRecordType'(i1 => inValues.i1 - 1, i2 => 9, i3 => 9);
      else
         return
           inputRecordType'(i1 => 9, i2 => 9, i3 => 9);
      end if;
   end decFunction;

end decrement;
