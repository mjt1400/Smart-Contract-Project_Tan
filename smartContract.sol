pragma solidity ^0.8.0;

contract TestContract {
    uint256 public number;

    function setNumber(uint256 _number) public {
        require(_number > 0, "Number must be greater than 0.");
        number = _number;
    }

    function addNumber(uint256 _number) public {
        uint256 newNumber = number + _number;
        assert(newNumber > number);
        number = newNumber;
    }

    function subtractNumber(uint256 _number) public {
        uint256 newNumber = number - _number;
        if (newNumber < 0) {
            revert("Number cannot be negative.");
        }
        number = newNumber;
    }
}
