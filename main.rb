array = [1, 2, 3, 4, 5]
target = 7

array.each_with_index do |n, index|
  if n == target
    puts "#{n}が見つかりました！"
    break 
  end
  if index == array.length - 1
    puts "見つかりませんでした"
  end
end
