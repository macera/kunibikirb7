class Form < ApplicationRecord
  has_many :form_items, :dependent => :destroy
  accepts_nested_attributes_for :form_items,
                                allow_destroy: true, 
                                reject_if: proc { |attributes| attributes['field'].blank? }
  has_many :answers, :dependent => :destroy
end
