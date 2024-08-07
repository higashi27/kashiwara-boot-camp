def linear_search(array, target)
  array.each_with_index do |x, index|
    if x == target
      return "#{target}が見つかりました"
    end
  end
  "見つかりませんでした"
end

array = [1, 2, 3, 4, 5]
target = 3
puts linear_search(array, target)
