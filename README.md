# DataStructures:
* InsertionSort

## About:
Checkout my Data-Structures Library!
This should become a repository of different data-structures.

## Test Suite
  * It should sort an array
  * It should sort an array of reapeated numbers
  * It should return nil if array is empty
  * It should sort an array of reversed numbers

## Insertion Sort
This implimentation of insertion sort is |O|^2 since there
are two loops within eachother.

The insertion sort method will an element in an array and check it
against the element before it.  If the element before is smaller and it will swap
once a value is found that is greater than the comparer it will break out of the swapping loop
and check the next element in the array.

### Usage:
  Example:
  ```Ruby
  insertion_sort(unsorted_array)
  ```

## Merge Sort
Ruby offers a great method for breaking apart an array into a bunch of small arrays.
I take advantage of this to skip the step where we would break the array down until
we have arrays that each only hold one element.

The merge sort method uses a divide and conquer style of comparisons. After breaking the
array apart we will put it back together one piece at a time.  When two arrays are
'merged' together we check the first value of each array to determine which goes into the
new array first.

### Usage:
  Example:
  ```Ruby
  merge_sort(unsorted_array)
  ```

## References:
Wiki
(http://en.wikipedia.org/wiki/Insertion_sort)
(http://en.wikipedia.org/wiki/Merge_sort)

Parallel Assignment
(http://stackoverflow.com/questions/4182722/swapping-array-elements-using-parallel-assignment)

Github Markdown
(https://help.github.com/articles/markdown-basics/)
