// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {

    function power(uint x, uint y) public pure returns(uint) {
    uint z = x**y;

    return z;
    
    
    }
    
}
contract Day5 {
    function power(uint256 base, uint256 exponent) public pure returns (uint256)
    {
        uint256 value = 1;
        while (exponent != 0) {
            value *= base;
            --exponent;
        }
        return value;
    }
}



// palindrome

contract Day6 {
    function palindrome(uint256 n) public pure returns (uint256) {
        uint256 reversed = 0;
        uint256 remainder;
        uint256 original;

        original = n;
        while (n != 0) {
            remainder = n % 10;
            reversed = reversed * 10 + remainder;
            n /= 10;
        }
        if (original == reversed) {
            return 1; //palindrome
        } else {
            return 0; //not palindrome
        }
        return reversed;
    }
}


// Reversing the digits
contract reversing{

    function reverseDigit(uint x) public pure returns(uint256) {
        uint reversed=0;
        uint original;
        uint remainder;
        original =x;

        while (x >=10){
            
            remainder = x % 10 ;
            reversed = reversed*10 + remainder;
            x = (x - remainder)/10 ;
            if (x <10 ){
                reversed = reversed*10 + x;
                break;
            }

      }
      return reversed;
    }

}
// It is same reversing the digits but see which on eis more optimesed
contract Day7 {
    function reverseDigit(uint256 n) public pure returns (uint256) {
        uint256 reverse = 0;
        uint256 remainder;

        while (n != 0) {
            remainder = n % 10;
            reverse = reverse * 10 + remainder;
            n /= 10;
        }
        return reverse;
    }
}

// Reversing an array
contract Day1 {
    function arrr(uint256[] memory arr, uint256 len) public pure returns (uint256[] memory)
    {
        uint256 temp;
        for (uint256 i = 0; i < len / 2; i++) {
            temp = arr[i];
            arr[i] = arr[len - i - 1];
            arr[len - i - 1] = temp;
        }
        return arr;
    }
}


// Reversing an array
contract Day8{
     uint[]  public temp;


    function insert(uint[] memory  element)public  {     //this function is used to initialise the array
        temp=element;
        
    }
    // function array_() public view returns(uint[] memory){   //this function is used to see what values we have in array
    //     return temp;
    // }
    function length() public view returns(uint){    //to see the length of the array
        return temp.length;
    }
    function reversing()public {  
        uint len =temp.length;
        uint x;
        for(uint i=0;i<len/2;i++){
            x=temp[i];
            temp[i]=temp[len -i -1];
            temp[len -i -1]=x;
            
        }
    }
}

// this function returns the value of the index when we put number
contract exploain{
 uint256[] public id;

    function Insert(uint256 num) public {
        id.push(num);
    }

    function get(uint256 num) public view returns (uint256) {
        for (uint i = 0; i < id.length; i++) {
        if (num == id[i]) {
                return i;
            }
        }
    }
}
// fibonacci series
contract Fibonacci {
    function fib(uint256 n) external pure returns (uint256) {
        if (n == 0) {
            return 0;
        }
        uint256 a = 1;
        uint256 b = 1;
        for (uint256 i = 2; i < n; i++) {
            uint256 c = a + b;
            b = a;
            a = c;
        }
        return a;
    }
}

// how to sort an array in ascending order

contract Day3 {
    function sort(int256[] memory array, uint256 size)
        public
        pure
        returns (int256[] memory)
    {
        for (uint256 step = 0; step < size - 1; ++step) {
            int256 swapped = 0;

            for (uint256 i = 0; i < size - step - 1; ++i) {
                if (array[i] > array[i + 1]) {
                    int256 temp;
                    temp = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = temp;

                    swapped = 1;
                }
            }

            if (swapped == 0) {
                break;
            }
        }
        return array;
    }
}

// This function is to return hwen a number lies in fibonnaci series

contract _Fibonacciseries {
    bool fibornot;
    function fib(uint256 n) external pure returns (bool) {
        if (n == 0) {
            return true;
        }
        uint256 a = 1;
        uint256 b = 1;
        // uint i;
        // for (uint256 i = 2; i < n; i++)
        while(a<=n) {
            uint256 c = a + b;
            b = a;
            a = c;
            if(a==n){
                return true;
                // break;
            }
        }
        // return a;
    }
}

// This below contract shows how to count number of elements if there are similar elements present in an array
contract Distinctnumbersinarr {
    function distinct(int256[] memory array, uint256 len)public pure returns (uint256) {
        uint256 i;
        uint256 j;
        uint256 count = 1;

        for (i = 1; i < len; i++) {
            for (j = 0; j < i; j++) {
                if (array[i] == array[j]) {
                    break;
                }
            }
            if (i == j) {
                count++;
            }
        }
        return count;
    }
}


// this function returns if the number entered is prime or not
contract _prime {
    function prime(uint256 n) public pure returns (uint256) {
        if (n <= 1) {
            return 0; //not prime
        }
        for (uint256 i = 2; i < n; i++) {
            if (n % i == 0) {
                return 0; //not prime
            }
        }
        return 1; //prime
    }
}
