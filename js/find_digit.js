function find_digits(n) {
  counter = 0;
  number_array = n.toString().split("");
  for (i = 0; i < number_array.length; i++) {
    if (number_array[i] != 0 && n % number_array[i] == 0) {
      counter++;
    }
  }
  return counter;
}

console.log(find_digits(25));
