from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    let (_,_,_,sum) = sum_rec(i=0, n=arr_len-1, array=arr, total=0);
    return (sum,);
}

func sum_rec(i: felt, n: felt, array: felt*, total: felt) -> (i: felt, n: felt, array: felt*, total: felt) {
    if (i == n+1) {
        return (i,n,array,total,);
    }
    tempvar a = array[i];
    let remainder = 0;
    %{
        _, remainder = divmod(ids.a, 2)
    %}
    tempvar newTotal;
    if(remainder == 0){
        newTotal= total + a;
    } else {
        newTotal = total;
    }
    let i = i+1;
    return sum_rec(i,n,array,newTotal);
}
