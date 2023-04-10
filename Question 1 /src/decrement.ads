pragma SPARK_Mode;


package decrement is

   -- Question 1(c)
   -- indicate that it ranges from 0 to 9
   subtype rangeNumber is Integer range 0 .. 9;

   -- Question 1(d)
   -- the record type
   type inputRecordType is
      record
         i1 : rangeNumber;
         i2 : rangeNumber;
         i3 : rangeNumber;
      end record;

   -- Question 1(g)
   -- indicated that if the number is e.g. 125 then i1 is 100, i2 is 20 and i3 is 5
   -- helps to bring the numbers together as a whole for the verification condition
   function finalResult (inValues : inputRecordType) return integer is
     (inValues.i1*100 + inValues.i2*10 + inValues.i3);

   -- Question 1(a)
   procedure decProcedure (inValues : in inputRecordType; outValues : out inputRecordType) with
   -- Question 1(f) and (g)
   -- verification condition
     Depends => (outValues => inValues),
     Pre => (inValues > 0 and inValues < 9),
     Post => (finalResult(outValues) = finalResult(inValues) - 1 or (finalResult(outValues) = 999 and finalResult(inValues) = 000));

   -- Question 1(e)
   function decFunction (inValues : inputRecordType) return inputRecordType with
     -- Question 1(g)
     Post => ((finalResult(decFunction'Result) = finalResult(inValues) - 1 or  (finalResult(decFunction'Result) = 999) and (finalResult(inValues) = 000)));


end decrement;
