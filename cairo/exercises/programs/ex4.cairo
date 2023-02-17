// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    let (_,_,sum) = sum_rec(i=1, n=n, total=0);
    return (sum,);
}

// Sum recursively
func sum_rec(i: felt, n: felt, total: felt) -> (i: felt, n: felt, total: felt) {
    if (i == n+1) {
        return (0,0,total,); // i & n are now useless
    }
    let total = total + i;
    %{ print(f"Computing sum [i:{ids.i}, n:{ids.n}, sum:{ids.total}]") %}
    let i = i+1;
    return sum_rec(i,n,total);
}
