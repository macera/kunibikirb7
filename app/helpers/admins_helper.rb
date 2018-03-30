module AdminsHelper

  def filed_table
    [
      ['テキスト', '1'],
      ['テキストエリア', '2'],
      #['セレクトボックス', '3'],
    ]
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) +
    link_to("#", { onclick: "remove_fields(this)", class: "btn btn-danger" }) do
      raw(name)
    end
  end

  def link_to_add_fields(name, f, association, target)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to "#", { onclick: %Q[add_fields(this, "#{association}", "#{escape_javascript(fields)}", "#{target}")], class: "btn btn-info" } do
      raw(name)
    end
  end

  
end
