pragma experimental SMTChecker;

interface I1 {
}

interface I2 {
	function f() external;
}

contract C {
	function f() public pure {
		assert(type(I1).interfaceId == 0);
		assert(type(I2).interfaceId != 0);
		assert(type(I2).interfaceId == 0x26121ff0);
	}
}
// ----
