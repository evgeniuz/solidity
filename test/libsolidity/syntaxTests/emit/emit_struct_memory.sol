contract c {
    struct S { uint a ; }
    event E(S);
    function f() public {
        emit E(S(6));
    }
}
// ----
// TypeError: (96-100): Using structs in events is only supported in the new experimental ABI encoder. Use "pragma experimental ABIEncoderV2;" to enable the feature.
