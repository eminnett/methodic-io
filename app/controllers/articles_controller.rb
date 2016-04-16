class ArticlesController < ApplicationController
  def index

  end

  def show
    filename = params[:slug]
    return unless filename
    begin
      render filename
    rescue
      not_found
    end
  end
end
