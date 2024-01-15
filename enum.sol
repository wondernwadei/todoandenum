// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract testingenum {

    //enum representing shipping status
    enum status {
        pending,
        shipped,
        accepted,
        rejected,
        cancelled
    }
     //default value is the first element listed in
     //definition of the type, in this case "pending"
        status public orderstatus;
    function get() public view returns (status) {
        return orderstatus;
    }
    //update status by passing uint into input
    function set(status _status) public {
        orderstatus = _status;
    }
    //to update a specific enum 
    function cancel() public {
        orderstatus = status.cancelled;
    }
    //delete resets the enum to its first value, 0
    function reset() public {
        delete orderstatus;
    }

}