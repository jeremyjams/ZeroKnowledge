// Implement a funcion that returns:
// - 1 when magnitudes of inputs are equal
// - 0 otherwise
func abs_eq(x: felt, y: felt) -> (bit: felt) {
    tempvar success = (1,);
    if(x/y == 1){
        return success;
    }
    if(-x/y == 1){
        return success;
    }
    return (0,);
}
