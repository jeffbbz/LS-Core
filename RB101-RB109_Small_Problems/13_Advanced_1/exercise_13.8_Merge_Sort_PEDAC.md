# Small Problems > Advanced 1 > Merge Sort

[Link to Problem](https://launchschool.com/exercises/bf7055e5)

## The Problem

sort the elements of a given array using the merge sort algorithm and return the sorted array

## P: Understand the Problem

**Input:** an array of elements

**Output:** the same array sorted or a new array with the same elements sorted

### Rules & Requirements

- elements will be integers or strings

- elements will be same data types

- use merge sort to sort

  - merge sort recursively halves the array into nested subarrays until all elements are the sole element in a nested array of arrays

  ```ruby
  [9, 5, 7, 1] ->
  [[9, 5], [7, 1]] ->
  [[[9], [5]], [[7], [1]]]
  [[[9], [5]], [[7], [1]]] ->
  [[5, 9], [1, 7]] ->
  [1, 5, 7, 9]
  ```

- use recursion in algorithm!

## E: Examples and Test Cases

```ruby
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
```

```pseudocode
A Pseudocode Example:

procedure mergesort( var a as array )
   if ( n == 1 ) return a

   var l1 as array = a[0] ... a[n/2]
   var l2 as array = a[n/2+1] ... a[n]

   l1 = mergesort( l1 )
   l2 = mergesort( l2 )

   return merge( l1, l2 )
end procedure

procedure merge( var a as array, var b as array )

   var c as array
   while ( a and b have elements )
      if ( a[0] > b[0] )
         add b[0] to the end of c
         remove b[0] from b
      else
         add a[0] to the end of c
         remove a[0] from a
      end if
   end while
   
   while ( a has elements )
      add a[0] to the end of c
      remove a[0] from a
   end while
   
   while ( b has elements )
      add b[0] to the end of c
      remove b[0] from b
   end while
   
   return c
	
end procedure
```

## D: Data Structures

array and nested arrays

## A: Algorithm

1. define a merge sort method to take one array and a helper merge method that takes two array arguments
2. merge sort
   1. set a return condition in the merge_sort method if the array only has one element then return the array
   2. initialize two new empty arrays for the first sorted half
   3. set the first array equal to the argument array from index 0 to index half the size of the given array
   4. set the second equal to the argument array index half the size + 1 to the end of the given array
   5. reassign the first array to the return value of passing it to the merge sort method recursively
   6. reassign the second array likewise
   7. pass both arrays to the merge algorithm for sorting
   8. return result
3. merge
   1. initialze a new empty array to contain the sorted results
   2. call a loop method to iterate while both arrays have elements
      1. iterate over the arrays, if the first element of the first array is greater than the first element of the second array add the lesser element to the sorted array and remove that element
      2. if first < second add that element to sorted and remove it
   3. create a second loop that runs while there are elements in the first array
      1. add and remove each element one at a time to the sorted array
   4. create a third loop that runs while there are elements in the second array
      1. add and remove each element one at a time to the sorted array

   5. return the sorted array

      
