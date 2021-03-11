class StudyItemsController < ApplicationController
  before_action :set_study_item, only: %i[show edit update destroy check due_date overduo]
  #to study order date and status
  def index
    @study_items = StudyItem.order :deadline

  end
  def show; end

  def new
    @study_item = StudyItem.new
    @categories = Category.all
  end
  


  def edit
    @categories = Category.all
  end

  def create
    @study_item = StudyItem.new(study_item_params)
    if @study_item.save
      redirect_to @study_item
    else
      @categories = Category.all
      render :new
    end
  end

  def update
    if @study_item.update(study_item_params)
      redirect_to @study_item
    else
      @categories = Category.all
      render :edit
    end
  end

  def destroy
    @study_item.destroy
    redirect_to root_path
  end

  def check
    @study_item.update(check_date:Time.current)
    redirect_to @study_item
  end

  def search
    @title = params[:title]
    @study_items = StudyItem.where "title like ?", "%#{@title}%"
  end




  private
  def set_study_item
    @study_item = StudyItem.find(params[:id])
  end

  def study_item_params
    params.require(:study_item).permit(:title, :category_id, :description, :deadline, :status)
  end
end
