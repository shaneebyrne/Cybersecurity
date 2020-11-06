//Shane Eire Byrne DAT305
package DAT305Assingments;
import java.io.*;
/**
 *    Resource: Ch. 3, "Testing and Debugging", of Data Structures: Abstraction and Design Using Java.
 *    Complete the Exercises for Section 3.5, Programming #1, in Ch. 3, "Testing and Debugging", of Data Structures:
 *    Abstraction and Design Using Java.
 *
 *    Write the findLargest method described in self-check exercise 2 in section 3.4 using Test-Driven Development.
 *
 *
 *    List the boundary conditions and tests needed for a method with the following heading:
 * /
 *  *  Search an array to find the first occurrence of the
 *  *  largest element
 *  *  @param x Array to search
 *  *  @return The subscript of the first occurrence of the
 *  *          largest element
 *  *  @throws NullPointerException if x is null
 *
 *      public static int findLargest(int[]x){
        *
 **/

public class Program2
{

    protected Program2()
    {

    }
    public static int findLargest(int[]x) throws NullPointerException
    {
        // Method to find maximum in arr[]
        int i;


            // Initialize maximum element
            int max = x[0];

            // Traverse array elements from second and
            // compare every element with current max
            for (i = 1; i < x.length; i++)
                if (x[i] > max)
                    max = x[i];
                //array is iterated through; largest value is stored in max, values are compaired to eachother as
        // array is iterated.

            return max;

    }

    public static void main(String[] arg)
    {


      int[] y = {100,200,1,25,600,100000,-1, 7};
      try {
          System.out.println(findLargest(y)); //static method is method of class, not of an object
          }
      catch(NullPointerException e)
      {
          System.out.println("Null entry discovered:" + e.getMessage());
      }
    }
}
