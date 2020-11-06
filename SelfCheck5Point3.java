//DAT305 Shane Eire Byrne

package DAT305Assingments;

/**
 *  Self-Check #4 within the "Exercises for Section 5.3" subsection in Section 5.3, "Recursive Array Search" of Ch. 5,
 *  "Recursion" in Data Structures: Abstraction and Design Using Java.
 *
 * Write a recursive algorithm to find the largest value in an array of integers.
 *
 **/


/**       Recursive Algorithm
 *
 * Data structure needed: array
 *
 * Goal of method: return largest integer in array
 *
 *  public int largestNumber (array, length of array)
 *  1.) Closing condition being an empty array.
 *      -array with only one or less elements has a default maximum
 *  2.) If array has multiple elements:
 *     -A ternary operator or branch statement can be used to determine elements are larger or smaller then eachother
 *     -1 is deducted from the length of the array to load the next element of the array.
 *     - the deduction of one from the length decrements the array
 *  3.) Recursve loop of largest number continues to examine neighboring elements as it continues to decrement the
 *  array.
 *  4.) Recursive loop decrements from one element from the next until the array reaches a size of 1 or 0
 *      -close condition for array is triggered when length of array becomes one after n amount of decrementation.
 *  5.) Remaining element in array is the largest after having being compared to all other elements in array.
 *  6.) Largest element is returned in the final recursive call.
 *
 *
 *
 **/
//Code example of algorithum
public class SelfCheck5Point3
{

    public static int findLargest(int[] arr, int length)
    {
        if (length == 1) //only one element in array
            return arr[0]; //sole element is returned
        return maxElement(findLargest(arr, length - 1), arr[length - 1]);
        //else recursive call is made
        //private element of maxElement  compares the first elements of array to see which is larger
        //maxElement returns largest of two elements
        //findLargest decrements array length
        //loop continues until array is left with one element, the largest.
    }

    private static int maxElement(int n1, int n2) //private access method to find largest number betweent wo numbers
    {
         return n1 > n2 ? n1 : n2;
         //Ternary operator: compares n1 to n2 and returns whichever is the larger fo the two integers
    }

    public static void main(String[] args) //driver method
    {
        int[] arr = {10, 5, 7, 9, 15, 6, 11, 8, 12, 2, 3}; //array of integers with loaded values
        int max = findLargest(arr, arr.length); //variable "max" initialized after array is decremented through with
        // find largest, maxElement, and the arrays length.
        System.out.println("Maximum element: " + max); //largest element in array is printed.
    }


}
