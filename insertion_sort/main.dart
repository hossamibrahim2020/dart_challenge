/*
insertion sort algorithem
[54, 23, 48, 61, 14, 31, 77, 98, 79, 100, 21]
 */
import 'dart:io';

final Insertion insertion = Insertion();

main() => insertion.insertionSort();

class Insertion {
  List<int> array = [54, 23, 48, 61, 14, 31, 77, 98, 79, 100, 21];
  int key, j, i;
  void insertionSort() {
    for (j = 1; j < array.length; j++) {
      key = array[j];
      i = j - 1;
      while (i >= 0 && array[i] > key) {
        array[i + 1] = array[i];
        i = i - 1;
        array[i + 1] = key;
      }
    }
    stdout.write(array);
  }
}
