class TagTwosController < ApplicationController
  before_action :set_tag_two, only: [:show, :edit, :update, :destroy]

  # GET /tag_twos
  # GET /tag_twos.json
  def index
    @tag_twos = TagTwo.all
  end

  # GET /tag_twos/1
  # GET /tag_twos/1.json
  def show
  end

  # GET /tag_twos/new
  def new
    @tag_two = TagTwo.new
  end

  # GET /tag_twos/1/edit
  def edit
  end

  # POST /tag_twos
  # POST /tag_twos.json
  def create
    @tag_two = TagTwo.new(tag_two_params)

    respond_to do |format|
      if @tag_two.save
        format.html { redirect_to @tag_two, notice: 'Tag two was successfully created.' }
        format.json { render :show, status: :created, location: @tag_two }
      else
        format.html { render :new }
        format.json { render json: @tag_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_twos/1
  # PATCH/PUT /tag_twos/1.json
  def update
    respond_to do |format|
      if @tag_two.update(tag_two_params)
        format.html { redirect_to @tag_two, notice: 'Tag two was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_two }
      else
        format.html { render :edit }
        format.json { render json: @tag_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_twos/1
  # DELETE /tag_twos/1.json
  def destroy
    @tag_two.destroy
    respond_to do |format|
      format.html { redirect_to tag_twos_url, notice: 'Tag two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_two
      @tag_two = TagTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_two_params
      params.require(:tag_two).permit(:name, :tag_one_id)
    end
end
