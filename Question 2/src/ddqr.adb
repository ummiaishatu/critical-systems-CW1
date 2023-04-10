pragma SPARK_Mode;

package body ddqr is

   -- Using the formula for solving dividend divisor quotient remainder formula
   procedure formula(dividend : in Positive; divisor : in Positive; quotient : out Natural; remainder : out Natural) is
   begin
      -- Quotient must be = 0 because as the loop goes on, it increases by 1 indication how many times the divident is subtracted
      -- by the divisor
      quotient := 0;
      -- Reaminder is equal to dividend because everytime the dividend is subtracted in the loop the new value becomes
      -- the remainder and is subtracted again until the remainder is less than the divisor.
      remainder := dividend;
      loop
         -- Question 2 (d)
         -- The loop invariant to prove that the program fulfils its conditions.
         pragma Loop_Invariant(dividend = quotient * divisor + remainder and remainder >= 0);
         exit when remainder < divisor;
         remainder := remainder - divisor;
         quotient := quotient + 1;
      end loop;
   end formula;
end ddqr;
