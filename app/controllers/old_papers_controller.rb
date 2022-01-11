class OldPapersController < ApplicationController
  
  def index
    @old_papers = OldPaper.all
  end

  def show
    @old_paper = OldPaper.find(params[:id])
  end

  def new
    @old_paper = OldPaper.new
  end

  def create
    @old_paper = OldPaper.new(old_paper_params)
    if @old_paper.save
      redirect_to old_paper_path(@old_paper)
    else
      render :new
    end
  end

  def edit
    @old_paper = OldPaper.find(params[:id])
  end

  def update
    @old_paper = OldPaper.find(params[:id])
    if @old_paper.update(old_paper_params)
      redirect_to @old_paper
    else
      render :edit
    end
  end

  def destroy
    @old_paper = OldPaper.find(params[:id])
    @old_paper.destroy
  end

  private

  def old_paper_params
    params.require(:old_paper).permit(:year, :genre, :condition, :description, :image_url)
  end
end
