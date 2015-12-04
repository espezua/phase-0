// Release 3

function sum (array) {
  var sum = 0;
  for (var i =0 ; i < array.length; i++) {
    sum += array[i];
  }
  return sum;
}



function mean (array) {
  var result = 0;
  for (var i =0 ; i < array.length; i++) {
    result += array[i];
  }
  return result/array.length;
}



function median (array) {
  if (array.length%2 == 0){
    var median_index = array.length / 2;
    var median = (array[median_index - 1] + array[median_index]) / 2;
    return median;
  }
  else {
    var median_index = Math.floor(array.length / 2);
    var median = array[median_index];
    return median;
  }
}
