module AnswersHelper
  # TODO: viewヘルパーを選べるようにする
  def create_form_field(f, i)
    case i.field
    when "1"
      f.text_field "answer#{i.id}".to_sym
    when "2"
      f.text_area "answer#{i.id}".to_sym
    end
    # when ‘select’
    #   f.select d.title.to_sym, d.category, , :prompt => "選択してください"
    # when ‘checkbox’
    #   d.category.each do |c|
    #     f.check_box d.title.to_sym, {multiple: true}, c[0],nil)
    #   end
    # when 'radio'
    #   d.category.each do |c|
    #     f.radio_button :d.title.to_sym, c[0]
    #     #f.label :d.title.to_sym, c[1], value: index
    #   end
    # when 'text_area'

    #end

  end
end
