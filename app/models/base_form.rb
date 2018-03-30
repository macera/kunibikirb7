class BaseForm
  include ActiveModel::Model
  #include ActiveModel::Validations
  #include ActiveModel::Conversion
  #extend ActiveModel::Naming

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def set_attributes(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def save(form)
    answer = form.answers.build
    form.form_items.each do |item|
      answer.answer_contents.build(
        value: self.send("answer#{item.id}".to_sym),
        form_item_id: item.id
      )
    end
    answer.save!
  end

  # def persisted?
  #   false
  # end
end