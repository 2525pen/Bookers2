class ProfileImagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :inedex, :edit]

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

end
