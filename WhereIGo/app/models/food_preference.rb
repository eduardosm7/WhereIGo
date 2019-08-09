class FoodPreference < ApplicationRecord
    after_initialize :set_default_values
    
    def set_default_values
        self.is_active ||= true
    end
    
    validates :food_id, presence:true
    validates :user_id, presence:true
end
