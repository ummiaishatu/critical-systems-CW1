pragma SPARK_Mode;

package ddqr is

   -- Positive to declare all the numbers must be positive and natural to declare that all the numbers cannot be less than 0
   procedure formula (dividend : in Positive; divisor : in Positive; quotient : out Natural; remainder : out Natural) with
     -- Question 2(c)
     Depends => (remainder => (dividend,divisor), quotient => (dividend,divisor)),
     Pre => (dividend > 0 and divisor > 0),
     Post => (dividend = quotient * divisor + remainder and remainder >= 0 and remainder < divisor and quotient >= 0);

end ddqr;
