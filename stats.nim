import math

let data = @[0,1,2,3,4,5,6]

proc average(data: seq[int]): int =
  sum(data) div data.len

const mean = average

proc medianOdd(data: seq[int]): int =
  let nth = (data.len + 1) div 2
  return data[nth-1]

assert medianOdd(@[0, 1, 2, 3, 4, 5, 6]) == 3
assert medianOdd(@[10, 34, 56, 89, 99, 101, 102]) == 89

proc medianEven(data: seq[float|int]): float =
  let nth: float = data.len / 2
  let lower:int = int(nth - 0.5)
  let upper:int = int(nth + 0.5)
  return (data[lower] + data[upper]).float / 2.float

assert medianEven(@[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0]) == 3.5
assert medianEven(@[10, 34, 54, 56, 89, 99, 101, 102]) == 72.5

proc median(data: seq[int]): int =
    return medianOdd(data)

echo "Average: ", average(data)
echo "Mean: ", mean(data)
echo "Median: ", median(data)