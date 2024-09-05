# バブルソート
array = [1, 2, 3, 4, 5]

def bubble_sort(array)
  array.each_with_index do |n, i|
    p i
    if array[i-1] > array[i]
      array[i], array[i-1] = array[i-1], array[i]
      p array
    elsif array[i-1] <= array[i]
      next
    end
  end
end

puts bubble_sort(array)
