class GambarsController < ApplicationController
  def index
    @gambars = Gambar.all
  end
  
  def create
    @gambar = Gambar.new(params_photo)
    if @gambar.save
      redirect_to gambars_path, :notice => "Upload Image #{@gambar.title} Success!"
    else
      render "new", :error => "Upload Image #{@gambar.title} Failed!"
    end
  end

  def new
    @gambar = Gambar.new
  end

  def edit
    @gambar = Gambar.find(params[:id])
  end
  
  def update
     @gambar = Gambar.find(params[:id])
    if @gambar.update(params_photo)
      redirect_to gambars_path, :notice => "Update Image #{@gambar.title} Success"
    else
      render "new", :error => "Update Image #{@gambar.title} Failed"
    end
  end
  
  def show
    @gambar = Gambar.find(params[:id])
  end

  def destroy
    @gambar = Gambar.find(params[:id])
    if @gambar.destroy
      redirect_to gambars_path, :notice => "Delete Image #{@gambar.title} Success"
    else
      redirect_to gambars_path, :error => "Delete Image #{@gambar.title} Failed"
    end
  end

  private
    def params_photo
      params.require(:gambar).permit(:title, :nama_gambar)
    end
end
