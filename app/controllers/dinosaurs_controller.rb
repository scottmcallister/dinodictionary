class DinosaursController < ApplicationController
  helper_method :sort_column, :sort_direction

  before_action :set_dinosaur, only: [:show, :edit, :update, :destroy]

  # GET /dinosaurs
  # GET /dinosaurs.json
  def index
    @dinosaurs = Dinosaur.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 3, :page => params[:page])
  end

  # GET /dinosaurs/1
  # GET /dinosaurs/1.json
  def show
  end

  # GET /dinosaurs/new
  def new
    @dinosaur = Dinosaur.new
  end

  # GET /dinosaurs/1/edit
  def edit
  end

  # POST /dinosaurs
  # POST /dinosaurs.json
  def create
    @dinosaur = Dinosaur.new(dinosaur_params)

    respond_to do |format|
      if @dinosaur.save
        format.html { redirect_to @dinosaur, notice: 'Dinosaur was successfully created.' }
        format.json { render :show, status: :created, location: @dinosaur }
      else
        format.html { render :new }
        format.json { render json: @dinosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinosaurs/1
  # PATCH/PUT /dinosaurs/1.json
  def update
    respond_to do |format|
      if @dinosaur.update(dinosaur_params)
        format.html { redirect_to @dinosaur, notice: 'Dinosaur was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinosaur }
      else
        format.html { render :edit }
        format.json { render json: @dinosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinosaurs/1
  # DELETE /dinosaurs/1.json
  def destroy
    @dinosaur.destroy
    respond_to do |format|
      format.html { redirect_to dinosaurs_url, notice: 'Dinosaur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinosaur
      @dinosaur = Dinosaur.find(params[:id])
    end

    # Only allow the white list of params through.
    def dinosaur_params
      params.require(:dinosaur).permit(:name, :era, :diet, :taxonomic_order, :length, :height, :image_url, :description)
    end

    def sort_column
      #params[:sort] || "name"
      Dinosaur.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      #params[:direction] || "asc"
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc" 
    end

end
