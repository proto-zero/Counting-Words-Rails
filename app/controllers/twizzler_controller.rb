class TwizzlerController < ApplicationController

  def home
    @chapters = Chapter.all
  end

  def entry
  end

  def count
    new_entry = Chapter.new
    new_entry.title = params["title"]
    new_entry.body = params["body"]
    @count = new_entry.body.split.count
    new_entry.save
    redirect_to "/home"
  end

  def show
    @chapter = Chapter.find(params[:id])
  end
end
