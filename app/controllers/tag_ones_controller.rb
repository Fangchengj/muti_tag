class TagOnesController < ApplicationController
  before_action :set_tag_one, only: [:show, :edit, :update, :destroy]

  # GET /tag_ones
  # GET /tag_ones.json
  def index
    @tag_ones = TagOne.all
  end

  # GET /tag_ones/1
  # GET /tag_ones/1.json
  def show
  end

  # GET /tag_ones/new
  def new
    @tag_one = TagOne.new
  end

  # GET /tag_ones/1/edit
  def edit
  end

  # POST /tag_ones
  # POST /tag_ones.json
  def create
    @tag_one = TagOne.new(tag_one_params)

    respond_to do |format|
      if @tag_one.save
        format.html { redirect_to @tag_one, notice: 'Tag one was successfully created.' }
        format.json { render :show, status: :created, location: @tag_one }
      else
        format.html { render :new }
        format.json { render json: @tag_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_ones/1
  # PATCH/PUT /tag_ones/1.json
  def update
    respond_to do |format|
      if @tag_one.update(tag_one_params)
        format.html { redirect_to @tag_one, notice: 'Tag one was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_one }
      else
        format.html { render :edit }
        format.json { render json: @tag_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_ones/1
  # DELETE /tag_ones/1.json
  def destroy
    @tag_one.destroy
    respond_to do |format|
      format.html { redirect_to tag_ones_url, notice: 'Tag one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_one
      @tag_one = TagOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_one_params
      params.require(:tag_one).permit(:name)
    end
end
