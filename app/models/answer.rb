class Answer < ApplicationRecord
  belongs_to :form
  has_many :answer_contents
  accepts_nested_attributes_for :answer_contents,
                                allow_destroy: true
end
