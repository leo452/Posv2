class Society < ActiveRecord::Base
  has_many :discounts
  has_many :categories, through: :discounts

  accepts_nested_attributes_for :discounts,reject_if: :all_blank,allow_destroy: true
end
