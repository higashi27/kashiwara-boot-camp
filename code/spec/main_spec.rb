require 'rspec'
require_relative '../main'

describe 'バブルソートのテスト' do 
  let(:array) { [5, 3, 4, 1, 2] }

  context '正常系' do
    it 'arrayの並び順が昇順になっていること' do
      expect(bubble_sort(array)).to eq [1, 2, 3, 4, 5]
    end
  end

  context '異常系' do
    it '配列にnilが含まれるときエラーが返ってくること' do
      let(:array) { [5, 3, 4, 1, nil] }
      # ?
    end

    it '配列が空のときエラーが返ってくること' do
      let(:array) { [] }
      # ?
    end
  end
end
