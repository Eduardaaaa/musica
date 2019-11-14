class AlunosprofsController < ApplicationController
  before_action :set_alunosprof, only: [:show, :edit, :update, :destroy]

  # GET /alunosprofs
  # GET /alunosprofs.json
  def index
    @alunosprofs = Alunosprof.all
  end

  # GET /alunosprofs/1
  # GET /alunosprofs/1.json
  def show
  end

  # GET /alunosprofs/new
  def new
    @alunosprof = Alunosprof.new
  end

  # GET /alunosprofs/1/edit
  def edit
  end

  # POST /alunosprofs
  # POST /alunosprofs.json
  def create
    @alunosprof = Alunosprof.new(alunosprof_params)

    respond_to do |format|
      if @alunosprof.save
        format.html { redirect_to @alunosprof, notice: 'Alunosprof was successfully created.' }
        format.json { render :show, status: :created, location: @alunosprof }
      else
        format.html { render :new }
        format.json { render json: @alunosprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunosprofs/1
  # PATCH/PUT /alunosprofs/1.json
  def update
    respond_to do |format|
      if @alunosprof.update(alunosprof_params)
        format.html { redirect_to @alunosprof, notice: 'Alunosprof was successfully updated.' }
        format.json { render :show, status: :ok, location: @alunosprof }
      else
        format.html { render :edit }
        format.json { render json: @alunosprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunosprofs/1
  # DELETE /alunosprofs/1.json
  def destroy
    @alunosprof.destroy
    respond_to do |format|
      format.html { redirect_to alunosprofs_url, notice: 'Alunosprof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alunosprof
      @alunosprof = Alunosprof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alunosprof_params
      params.require(:alunosprof).permit(:aluno_id, :professor_id)
    end
end
