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
With merge sort we will break the array down until
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

## Radix Sort
Radix sort is an interesting algorithm in that we actually wont be
doing any comparisons. Instead it takes a different approach to sorting
and groups keys together that share the same position and
value.
Here we're working with base 10 so we'll be using 10 seperate 'buckets'.

I broke each array down by calling to_string in order to return the
index that I wanted to group it by.

###Usage:
  Example:
  ```Ruby
  radix_sort(unsorted_array)

## Quick Sort
Quick sort is another divide and conquer method that works by swapping values. I believe
Wikipedia explains the three steps best.  They are as follows.

The steps are:
1. Pick an element, called a pivot, from the array.
2. Reorder the array so that all elements with values less than the pivot come before the
pivot, while all elements with values greater than the pivot come after it (equal values
can go either way). After this partitioning, the pivot is in its final position. This
is called the partition operation.
3. Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.


## References:
*Wiki
  -[Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort)
  -[Merge Sort](http://en.wikipedia.org/wiki/Merge_sort)
  -[Radix Sort](http://en.wikipedia.org/wiki/Radix_sort)
  -[Quick Sort](http://en.wikipedia.org/wiki/Quicksort)
*[Parallel Assignment](http://stackoverflow.com/questions/4182722/swapping-array-elements-using-parallel-assignment)

*[Github Markdown](https://help.github.com/articles/markdown-basics/)

*Individuals
  -Clare Constantine (Contributed to Radix Sort)
