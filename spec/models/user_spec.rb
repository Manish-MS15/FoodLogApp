require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures meal_type presence' do
      entry= Entry.new(carbohydrates: 35, proteins: 20,fats: 10, calories: 400).save
      expect(entry).to eq(false)
    end
    
    it 'should save successfully' do
      entry= Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 20,fats: 10, calories: 400).save
      expect(entry).to eq(true)
    end
  end
end
