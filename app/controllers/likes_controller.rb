class LikesController < ApplicationController
  def index
    @likes = Like.all

    render("likes/index.html.erb")
  end

  def show
    @like = Like.find(params[:id])

    render("likes/show.html.erb")
  end

  def new
    @like = Like.new

    render("likes/new.html.erb")
  end

  def create
    @like = Like.new

    @like.user_id = params[:user_id]
    @like.course_id = params[:course_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/courses", :notice => "Course saved successfully.")
    else
      render("likes/new.html.erb")
    end
  end

  def edit
    @like = Like.find(params[:id])

    render("likes/edit.html.erb")
  end

  def update
    @like = Like.find(params[:id])

    @like.user_id = params[:user_id]
    @like.course_id = params[:course_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/likes/#{@like.id}", :notice => "Course updated successfully.")
    else
      render("likes/edit.html.erb")
    end
  end

  def destroy
    @like = Like.find(params[:id])

    @like.destroy

    if URI(request.referer).path == "/likes/#{@like.id}"
      redirect_to("/", :notice => "Course removed from 'My Courses'.")
    else
      redirect_to(:back, :notice => "Course removed from 'My Courses'.")
    end
  end
end
