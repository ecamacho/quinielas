class QuinielasController < ApplicationController
  before_action :set_quiniela, only: [:show, :edit, :update, :destroy]

  # GET /quinielas
  # GET /quinielas.json
  def index
    @quinielas = Quiniela.all
  end

  # GET /quinielas/1
  # GET /quinielas/1.json
  def show
  end

  # GET /quinielas/new
  def new
    @quiniela = Quiniela.new
  end

  # GET /quinielas/1/edit
  def edit
  end

  # POST /quinielas
  # POST /quinielas.json
  def create
    @quiniela = Quiniela.new(quiniela_params)
    puts "imprime el valor #{quiniela_params}"
    @quiniela.user = @current_user
    puts "imprime el valor #{current_user}"
    @quiniela.user_id = @current_user.id
    usuario_quiniela = UsuarioQuiniela.new
    usuario_quiniela.user = @current_user
    usuario_quiniela.quiniela = @quiniela

    
      if @quiniela.save
        usuario_quiniela.save
        #format.html { redirect_to @quiniela, notice: 'Quiniela was successfully created.' }
        
        #format.json { render :show, status: :created, location: @quiniela }
        redirect_to url_for(:controller => :calendar, :action => :index) 
      else
        format.html { render :new }
        format.json { render json: @quiniela.errors, status: :unprocessable_entity }
      end
    
  end

  # PATCH/PUT /quinielas/1
  # PATCH/PUT /quinielas/1.json
  def update
    respond_to do |format|
      if @quiniela.update(quiniela_params)
        format.html { redirect_to @quiniela, notice: 'Quiniela was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiniela }
      else
        format.html { render :edit }
        format.json { render json: @quiniela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quinielas/1
  # DELETE /quinielas/1.json
  def destroy
    @quiniela.destroy
    respond_to do |format|
      format.html { redirect_to quinielas_url, notice: 'Quiniela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiniela
      @quiniela = Quiniela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiniela_params
      params.require(:quiniela).permit(:nombre)
    end
end

