class StaticPagesController < ApplicationController
    def home
      @blogs = Blog.where(["blog_name LIKE ?","%#{params[:search]}%"]).paginate(page: params[:page],per_page: 2)
    end

    def help
    end
  end
