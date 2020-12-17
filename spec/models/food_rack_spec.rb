require 'rails_helper'

RSpec.describe FoodRack, type: :model do
  before do
    @food_rack = FactoryBot.build(:food_rack)
  end

  describe '食材情報の保存' do
    context "食材情報の保存ができるとき" do
      it "メモと画像があれば保存ができる" do
        expect(@food_rack).to be_valid
      end
      it "メモがあればツイートは保存される" do
        @food_rack.memo = "a"
        expect(@food_rack).to be_valid
      end
    end

    context "食材情報の保存ができない時" do
      it "メモ情報がないと登録できない" do
        @food_rack.memo = ""
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("Memo can't be blank")
      end
      it "ユーザーが紐づいていないと登録できない" do
        @food_rack.user = nil
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("User must exist")
      end
    end
  end
end
