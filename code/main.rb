def linear_search(array, target)
  array.each_with_index do |x, index|
    if x == target
      return "#{target}が見つかりました"
    end
  end
  "見つかりませんでした"
end

def binary_search(array, target)
  min = 0
  max = array.length - 1
  mid = min + (min - max) / 2
  while min <= max
    if array[mid] < target
      min = mid + 1
      return binary_search(array[min..max], target)
    elsif array[mid] > target
      max = mid - 1
      return binary_search(array[min..max], target)
    elsif array[mid] == target
      return "#{target}が見つかりました"
    end
  end
  "見つかりませんでした"
end

array = [1, 2, 3, 4, 5]
target = 8
puts linear_search(array, target)
puts binary_search(array, target)