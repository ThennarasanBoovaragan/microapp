class MicroappDbsController < ApplicationController
  before_action :set_microapp_db, only: %i[ show edit update destroy ]

  # GET /microapp_dbs or /microapp_dbs.json
  def index
    @microapp_dbs = MicroappDb.all
  end

  # GET /microapp_dbs/1 or /microapp_dbs/1.json
  def show
  end

  # GET /microapp_dbs/new
  def new
    @microapp_db = MicroappDb.new
  end

  # GET /microapp_dbs/1/edit
  def edit
  end

  # POST /microapp_dbs or /microapp_dbs.json
  def create
    @microapp_db = MicroappDb.new(microapp_db_params)

    respond_to do |format|
      if @microapp_db.save
        format.html { redirect_to @microapp_db, notice: "Microapp db was successfully created." }
        format.json { render :show, status: :created, location: @microapp_db }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @microapp_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microapp_dbs/1 or /microapp_dbs/1.json
  def update
    respond_to do |format|
      if @microapp_db.update(microapp_db_params)
        format.html { redirect_to @microapp_db, notice: "Microapp db was successfully updated." }
        format.json { render :show, status: :ok, location: @microapp_db }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @microapp_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microapp_dbs/1 or /microapp_dbs/1.json
  def destroy
    @microapp_db.destroy
    respond_to do |format|
      format.html { redirect_to microapp_dbs_url, notice: "Microapp db was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microapp_db
      @microapp_db = MicroappDb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def microapp_db_params
      params.require(:microapp_db).permit(:Author, :Title, :CreationDate)
    end
end
