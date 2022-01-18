class OldNewsPapersController < ApplicationController

  def index
    @old_news_papers = OldNewPaper.all
  end

  def show
    @old_news_paper = OldNewsPaper.find(params[:id])
  end

  def new
    @old_news_paper = OldNewsPaper.new
  end

  def create
    @old_news_paper = OldNewsPaper.new(old_news_paper_params)
    if @old_news_paper.save
      redirect_to old_news_paper_path(@old_news_paper)
    else
      render :new
    end
  end

  def edit
    @old_news_paper = OldNewsPaper.find(params[:id])
  end

  def update
    @old_news_paper = OldNewsPaper.find(params[:id])
    if @old_news_paper.update(old_news_paper_params)
      redirect_to @old_news_paper
    else
      render :edit
    end
  end

  def destroy
    @old_news_paper = OldNewsPaper.find(params[:id])
    @old_news_paper.destroy
  end

  private

  def old_news_paper_params
    params.require(:old_news_paper).permit(:name, :year, :date, :condition, :genre, :image_url)
  end
end
