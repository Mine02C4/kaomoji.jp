class KaomojiDebugController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]

  def index
    @kaomojies = Kaomoji.all
  end

  def show
  end

  def new
    @kaomoji = Kaomoji.new
  end

  def edit
  end

  def create
    @kaomoji = Kaomoji.new(kaomoji_params)

    respond_to do |format|
      if @kaomoji.save
        format.html { redirect_to :action => 'show', :id => @kaomoji.id, notice: 'Kaomoji was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kaomoji }
      else
        format.html { render action: 'new' }
        format.json { render json: @kaomoji.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @kaomoji.update(kaomoji_params)
        format.html { redirect_to :action => 'show', :id => @kaomoji.id, notice: 'Friend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kaomoji.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kaomoji.destroy
    respond_to do |format|
      format.html { redirect_to kaomoji_debug_index_url }
      format.json { head :no_content }
    end
  end

  private
    def set_friend
      @kaomoji = Kaomoji.find(params[:id])
    end

    def kaomoji_params
      params.require(:kaomoji).permit(:kaomoji, :registered_time, :published_time, :status, :has_words)
    end
end
