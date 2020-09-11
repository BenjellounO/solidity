pragma experimental SMTChecker;

contract C {
	function f() pure public {
		require(false);
		// This is not reachable.
		assert(false);
	}

	function g() pure public {
		revert();
		// This is not reachable.
		assert(false);
	}
}
// ----
// Warning 5740: (211-224): Unreachable code.
