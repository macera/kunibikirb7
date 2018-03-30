class AdminsController < ApplicationController

  before_action :get_form, only: [:show, :edit, :update, :destroy]

  def index
    @forms = Form.all
  end

  def new
    @form = Form.new
    2.times do
      @form.form_items.build
    end
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @form.destroy
    redirect_to action: :index
  end

  private

  def get_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:title, form_items_attributes: [:id, :name, :field, :required])
  end

end
