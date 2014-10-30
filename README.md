[![Coverage Status](https://coveralls.io/repos/fparker9676/data_structures/badge.png)](https://coveralls.io/r/fparker9676/data_structures)

# DataStructures:
* InsertionSort
* Merge Sort
* Radix Sort
* Quick Sort
* Linked Lists
* Stacks
* Queue

## About:
Checkout my Data-Structures Library!
This should become a repository of different data-structures.

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

### Usage:
  Example:
  ```Ruby
  radix_sort(unsorted_array)
  ```

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

## Linked Lists
Here we will make a link list using the Node Class.  Each node will
have a value and pointer to the next node. We will include a few
different methods to help us with our list.

* insert(node) will insert the given node at the head of the list.
* size() will return the length of the list.
* search(val) will return the node containing 'val' in the list, if present, else nil.
* remove(node) will remove the given node from the list, wherever it might be. Return the node's value. If it isn't found, return nil.
* to_s() will print a comma-separated list of all values in the list, whatever they might be: "12, 'sam', :item, 'tango', 42"

We build a basic double linked list in class and this is what we came up
with.  I'm referencing this a lot to write this assignment (although,
this is javascript I feel it still applies here.)

```Javascript
function Car(plate, prev, next) {
  this.plate = plate;
  this.prev = prev;
  this.next = next;

  // this.remove = function() {
  //  this.prev.next = this.next;
  //  this.next.prev = this.prev;
  // };
}
```
### Usage
insert - Will insert a new node into the list
```Ruby
insert(Node.new(new_node))
```
size - Returns an integer
```Ruby
linked_list.size()
```
search - Returns the value of the node
```Ruby
linked_list.search(node)
```
to_s - Returns a string
```Ruby
linked_list.to_s()
```

## Stacks
Stacks are a kind of data structure where the rule is first in last out.
This means the last item you push onto a stack is the item that will be
popped.
I find it's easiest to think of this like a deck of cards, where the only
card you can take will be the one on top.
This implementation will only include two methods. Additionally, I'm also not
going to use an array.

* push(data) - Adds a data element to the stack
The parameter is the data element to add to the stack.

* pop() - Removes a data element from the stack and returns the value of that data
element.  If the stack is empty, attempts to call pop should raise an appropriate
Ruby exception class.
### Usage

push - adds a value to the Stack
```Ruby
  stack_name.push 'value'
```
pop - removes the last item inserted to the stack and returns its name
```Ruby
  stack_name.pop
```


## Queues
Queues is another data structure where the rule is FIFO (First in first out)
Queues are everywhere and are a great way of keeping track of different structures
Think of lines waiting to place your order.  A line is a great way to organize the
processing of data by allowing you to have a queue waiting to be processed.

* enqueue(value): adds value to the queue
* dequeue(): removes the correct item from the queue and returns its value (should raise
an exception if the queue is empty)
* size(): return the size of the queue. Should return 0 if the queue is empty.

### Usage
```Ruby
```


## References:
* Wiki
  -[Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort)
  -[Merge Sort](http://en.wikipedia.org/wiki/Merge_sort)
  -[Radix Sort](http://en.wikipedia.org/wiki/Radix_sort)
  -[Quick Sort](http://en.wikipedia.org/wiki/Quicksort)
  -[Linked Lists](http://en.wikipedia.org/wiki/Linked_list)
  -[Stacks](http://en.wikipedia.org/wiki/Stack_(abstract_data_type))
  -[Queues](http://www.princeton.edu/~achaney/tmve/wiki100k/docs/Queue_(data_structure).html)

* [Parallel Assignment](http://stackoverflow.com/questions/4182722/swapping-array-elements-using-parallel-assignment)

* [Github Markdown](https://help.github.com/articles/markdown-basics/)

* [Ruby -v2.1.2 Docs](http://ruby-doc.org/core-2.1.2/)

*Individuals
  -Clare Constantine (Contributed to Radix Sort)
