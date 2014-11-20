class VendedoresController < ApplicationController
  before_action :set_vendedor, only: [:show, :edit, :update, :destroy]

  # GET /vendedores
  # GET /vendedores.json
  def index
    @vendedores = Vendedor.all
  end

  # GET /vendedores/1
  # GET /vendedores/1.json
  def show
  end

  # GET /vendedores/new
  def new
    @vendedor = Vendedor.new(pessoa: PessoaFisica.new)
  end

  # GET /vendedores/1/edit
  def edit
  end

  # POST /vendedores
  # POST /vendedores.json
  def create
    @vendedor = Vendedor.new(vendedor_params)

    respond_to do |format|
      if @vendedor.save
        format.html { redirect_to @vendedor, notice: 'Vendedor was successfully created.' }
        format.json { render :show, status: :created, location: @vendedor }
      else
        format.html { render :new }
        format.json { render json: @vendedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendedores/1
  # PATCH/PUT /vendedores/1.json
  def update
    respond_to do |format|
      if @vendedor.update(vendedor_params)
        format.html { redirect_to @vendedor, notice: 'Vendedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendedor }
      else
        format.html { render :edit }
        format.json { render json: @vendedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendedores/1
  # DELETE /vendedores/1.json
  def destroy
    @vendedor.destroy
    respond_to do |format|
      format.html { redirect_to vendedores_url, notice: 'Vendedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendedor
      @vendedor = Vendedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendedor_params
      params[:vendedor][:pessoa_attributes] = params[:pessoa_attributes]
      params.require(:vendedor).permit(
        :percentual_comissao,
        :situacao,
        pessoa_attributes:[
          :type, 
          :razao_social, 
          :nome_fantasia,
          :cpf_cnpj, 
          :inscricao_estadual,
          :inscricao_municipal,
          :suframa,

          :nome,
          :data_nascimento,
          :naturalidade,
          :rg_emissao,
          :rg_numero,
          :orgao,
          :sexo 
        ]     
        )
    end
end
