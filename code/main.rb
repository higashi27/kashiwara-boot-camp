# バブルソート
def bubble_sort(array)
  max1 = array.length
  max2 = array.length - 1
  for i in 1..max1 do
    for j in 1..max2 do
      if array[j-1] > array[j]
        array[j-1], array[j] = array[j], array[j-1]
      elsif array[j-1] <= array[j]
        next
      end
    end
    max2 -= 1
  end
  array
end

array = [5, 3, 4, 1, 2]
p bubble_sort(array)
