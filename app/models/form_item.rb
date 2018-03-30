class FormItem < ApplicationRecord
  belongs_to :form
  #has_many :item_options, :dependent => :destroy
  has_many :answer_contents, :dependent => :destroy
end
