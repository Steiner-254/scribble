/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.6.10;

contract Foo {
    function foo(uint256 x) public returns (uint256 y) {
        y = _original_Foo_foo(x);
        if (!(keccak256("ab;") != bytes32(0x0))) {
            emit __ScribbleUtilsLib__16.AssertionFailed("000316:0068:000 0: P0");
            assert(false);
        }
        if (!(y == (x + 1))) {
            emit __ScribbleUtilsLib__16.AssertionFailed("000466:0068:000 1: P1");
            assert(false);
        }
    }

    function _original_Foo_foo(uint256 x) private returns (uint256 y) {
        return x + 1;
    }
}

library __ScribbleUtilsLib__16 {
    event AssertionFailed(string message);

    event AssertionFailedData(int eventId, bytes encodingData);

    function assertionFailed(string memory arg_0) internal {
        emit AssertionFailed(arg_0);
    }

    function assertionFailedData(int arg_0, bytes memory arg_1) internal {
        emit AssertionFailedData(arg_0, arg_1);
    }

    function isInContract() internal returns (bool res) {
        assembly {
            res := sload(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c)
        }
    }

    function setInContract(bool v) internal {
        assembly {
            sstore(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c, v)
        }
    }
}
