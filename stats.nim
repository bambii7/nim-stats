import math

let data = @[0,1,2,3,4,5,6]

proc average(data: seq[int]): int =
  sum(data) div data.len

const mean = average

echo "Average: ", average(data)
echo "Mean: ", mean(data)