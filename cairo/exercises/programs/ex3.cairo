%builtins range_check

// Perform and log output of simple arithmetic operations
func simple_math() {
   // adding 13 +  14
   tempvar a = 13 + 14;
    %{ print(f"my value: {ids.a}") %}
   // multiplying 3 * 6
   tempvar a = 3 * 6;
    %{ print(f"my value: {ids.a}") %}
   // dividing 6 by 2
   tempvar a = 6/2;
    %{ print(f"my value: {ids.a}") %}
   // dividing 70 by 2
   tempvar a = 70/2;
    %{ print(f"my value: {ids.a}") %}
   // dividing 7 by 2
   tempvar a = 7/2;
    %{ print(f"my value: {ids.a}") %}
    return ();
}
