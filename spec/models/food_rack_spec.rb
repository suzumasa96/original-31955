require 'rails_helper'

RSpec.describe FoodRack, type: :model do
  before do
    @food_rack = FactoryBot.build(:food_rack)
  end

  describe '食材情報の保存' do
    context "食材情報の保存ができるとき" do
      it "食材の写真と保存場所、保存月日があれば保存ができる" do
        expect(@food_rack).to be_valid
      end
    end

    context "食材情報の保存ができない時" do
      it "食材の写真がないと保存できない" do
        @food_rack.picture = nil
        expect(@food_rack.errors.full_messages).to include
      end
      it "保存場所情報がないと登録できない" do
        @food_rack.category_id = nil
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("Memo ")
      end
      it "保存月情報がないと登録できない" do
        @food_rack.month_id = nil
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("Memo ")
      end
      it "保存日情報がないと登録できない" do
        @food_rack.day_id = nil
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("Memo ")
      end
      it "ユーザーが紐づいていないと登録できない" do
        @food_rack.user = nil
        @food_rack.valid?
        expect(@food_rack.errors.full_messages).to include("User must exist")
      end
    end
  end
end
