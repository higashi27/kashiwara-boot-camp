require 'rspec'
require_relative '../main'

describe "線形探索のテスト" do
  let(:array) { [1, 2, 3, 4, 5] }

  context "指定したものが存在する場合" do
    let(:target) { 3 }

    it "見つかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("3が見つかりました")
    end
  end

  context "指定したものが存在しない場合" do
    let(:target) { 6 }

    it "見つからなかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("見つかりませんでした")
    end
  end
end

describe "二分探索のテスト" do
  let(:array) { [1, 2, 3, 4, 5] }

  context "真ん中に指定したものが存在する場合" do
    let(:target) { 3 }

    it "見つかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("3が見つかりました")
    end
  end

  context "左端に指定したものが存在する場合" do
    let(:target) { 1 }

    it "見つかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("1が見つかりました")
    end
  end

  context "右端に指定したものが存在する場合" do
    let(:target) { 5 }

    it "見つかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("5が見つかりました")
    end
  end

  context "指定したものが存在しない場合" do
    let(:target) { 6 }

    it "見つからなかったメッセージが表示されること" do
      expect(linear_search(array, target)).to eq("見つかりませんでした")
    end
  end
  
end
