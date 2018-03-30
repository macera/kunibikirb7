class AnswersController < ApplicationController
  before_action :get_form
  before_action :get_answer, only: [:show]

  def index
    @answers = @form.answers
  end

  def new
    @form_items = @form.form_items
    @model = create_model_instance(@form)
  end

  def create
    @model = create_model_instance(@form)
    @model.set_attributes(answer_params)
    if @model.valid?
      @model.save(@form)
      redirect_to action: :index, params: { admin_id: @form.id }
    else
      render action: :new
    end
  end

  def show
  end

  def answer_params
     params.require(:base_form).permit(*column_names(@form))
  end

  def get_form
    @form = Form.find(params[:admin_id])
  end

  def get_answer
    @answer = Answer.find(params[:id])
  end

  def create_model_instance(head)
    form = BaseForm.new
    form_class = form.singleton_class
    form_class.class_eval do
      head.form_items.each do |item|
        answer = "answer#{item.id}".to_sym
        Rails.logger.debug  "#{head.title}のモデルのカラム: #{answer}"
        attr_accessor answer
        if item.required
          validates answer, presence: { message: :blank, value: item.name }
        end
        # if item.maxlength
        #   validates answer, length: { maximum: item.maxlength, value: item.name }
        # end
        # if item.minlength
        #   validates answer, length: { minimum: item.minlength, value: item.name }
        # end
      end
    end
    form
  end

  def column_names(head)
    attrs = []
    head.form_items.each do |item|
      field = "answer#{item.id}".to_sym
      # if item.field == '3'
      #   attrs << { field => [] }
      # else
      attrs << field
      #end
    end
    attrs
  end
end
