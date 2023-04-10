# critical-systems-CW1

- Grade : 100%

# Question 1
In this question we consider numbers in the range 0 . . . 999 which are represented by its three digits,
e.g. 293 is represented by the digits 2, 9 and 3. The goal is to decrement such a number by 1. If
the input is 0, we cannot decrement it by one since representable numbers are positive, in this case
999 should be returned. The operation wshould be done by working directly with the individual
digits rather than the overall number. The verification conditions can however refer to the overall
number. Let i1, i2, i3 be the three digits of the input, so in case of 293 i1 = 2, i2 = 9, i3 = 3. Let
o1, o2, o3 the three digits of the output.
- If d3 > 0 we need to decrement d3 by 1 and leave the other digits, so o1 = d1, o2 = d2, o3
= d3 - 1.
- If d3 = 0 we need to replace d3 by a 9 and decrement d2 by 1:
- If d2 > 0 then o1 = d1, o2 = d2 - 1, o3 = 9.
– If d2 = 0 we need to replace d2 by a 9 and decrement d1 by 1:
  - If d1 > 0 then o1 = d1 -1, d2 = d3 = 9.
  -  If d1 = 0 then o1 = o2 = o3 = 9. In this case the input was 000, the output is 999.
1.  Define a procedure which decrements a number as given by three digits using the algorithm
stated above. [4 marks]

2.  Add a main procedure which asks the user for the 3 digits of the input executes the procedure
from (a), and displays the result obtained by applying the procedure. The main procedure
should run in a loop, which at the end asks whether the user wants to continue with another
example or wants to terminate. It should only accept user inputs which are valid digits, i.e.
in the range from 0 to 9.
If you follow the example in the example collections
criticalhighintegritysystems/sparkAdaCodeLecture/misc/
conversion24hrClock12hrAMPMClock/withIO/vers02OnlyAdaWithIOIntegersNoLibrary/
your program will raise an exception, if the user instead of an integer inputs something else.
You can ignore this problem at this stage. When using SPARK Ada later, we will use a
library, which takes care of this problem. [7 marks]

3.  Adapt the solution from (b) so that digits are given as an element of a type of digits in the
range from 0 to 9.
[5 marks]

4.  Adapt the solution from (c) so that numbers are given as elements of a record type consisting
of three digits. [5 marks]

5. Adapt the solution from (d) by adding a function, which has the same functionality as the
procedure, but which takes as inputs the input given as a record of three digits and returns
the result as a record of three digits. The main procedure should allow to execute the function
and the procedure. [6 marks]

6.  Add to your solution from (e) a depends clauses to the procedure, and replace (if you haven’t
done so yet) the use of Ada.Text Io and Ada.Integer Text IO by using the aslibrary available
in the lecture example in asLibraryIO (the files were included as well in most of the examples
in
sparkAdaCodeLecture/misc/conversion24hrClock12hrAMPMClock/withIO/
Make sure that your code passes the data flow and information flow analysis of Spark Ada.
[8 marks]

7. Add verification conditions to the procedure and function of (e) expressing the correctness.
The verification conditions should express that if one converts the input and the output into
integers, the output is the same as what one would obtain if one computd the result directly
on the integer. Show that your program passes the verification conditions of SPARK Ada,
including any range conditions. [10 marks]

8.  In addition 5 marks are reserved for signing off the last subquestion you submitted in the lab
(minimum 1). [5 marks]


# Question 2 

1.  Define a procedure which has as input a dividend and divisor and computes the quotient
and remainder manually, by iteratively subtracting from the dividend the divisor, until it is
smaller than the divisor. The number of times this subtraction is carried out is the quotient,
and what remains of the dividend, when this loop has finished, is the remainder. Note that
the dividend should be an input variable, so the subtractions
need to be carried out on a copy of that variable.
The above procedure doesn’t work if the divisor is 0 or negative, but you can ignore this
problem at this stage. [12 marks]

2. Add as in Question 1 (b) a main procedure asking for inputs returning the outputs and asking
whether the user wants to continue or not. [9 marks]

3.  Add to your solution from (b) depends clauses, and replace as in 1 (f) the use of Ada.Text Io
and Ada.Integer Text IO by using the aslibrary (if you haven’t yet done so). Make sure that
your code passes the data flow and information flow analysis of Spark Ada. [6 marks]

4.  Add meaningful verifications to your solution in (c) including a loop invariant, and prove in
SPARK Ada that your program fulfils these conditions. The verification conitions should ex-
press that the divident is equal to the quotient ∗ divisor + remainder, and that the remainder
is ≥ 0 and < divisor. [9 marks]

5.  Adapt your solution in (d) so that the range conditions are as well fulfilled. If good verification
conditions were chosen in (d), no modification of your program and verification conditions
may be needed. [9 marks]

6.  In addition 5 marks are reserved for signing off the last subquestion you submitted in the lab
(minimum 1). [5 marks]
