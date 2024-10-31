require 'rspec'
require_relative '../main'

describe 'バブルソートのテスト' do 
  let(:array) { [5, 3, 4, 1, 2] }

  context '正常系' do
    it 'arrayの並び順が昇順になっていること' do
      expect(bubble_sort(array)).to eq [1, 2, 3, 4, 5]
    end
  end

  context '配列にnilが含まれるとき' do
    let(:array) { [5, 3, 4, 1, nil] }

    it 'エラーが返ってくること' do
      expect(bubble_sort(array)).to raise_error(ArgumentError, '配列にnilが含まれています')
    end
  end

  context '配列が空のとき' do
    let(:array) { [] }

    it 'エラーが返ってくること' do
      expect(bubble_sort(array)).to eq []
    end
  end
end
