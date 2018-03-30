class AnswerContent < ApplicationRecord
  belongs_to :answer
  belongs_to :form_item
  #belongs_to :item_option
end
