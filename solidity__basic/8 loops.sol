// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Loop {
    uint[3] public arr;
    uint public count;

    function loop () public {
        // while() loop
        // while (count < arr.length) {
        //     arr[count] = count;
        //     count++;
        // }

        // for() loop
        // for (uint i = count; i < arr.length; i++) {
        //     arr[count] = count * 10;
        //     count++;
        // }

        // do while() loop
        do {
            arr[count] = count * 100;
            count++;
        } while(count < arr.length);
    }
}