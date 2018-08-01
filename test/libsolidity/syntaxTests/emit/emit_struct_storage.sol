contract c {
    struct S { uint a ; }
    event E(S);
    S s;
    function f() public {
        emit E(s);
    }
}
// ----
// TypeError: (105-106): Using structs in events is only supported in the new experimental ABI encoder. Use "pragma experimental ABIEncoderV2;" to enable the feature.
