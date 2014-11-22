class FornecedoresController < ApplicationController
  before_action :set_fornecedor, only: [:show, :new, :edit, :update, :destroy]

  # GET /fornecedores
  # GET /fornecedores.json
  def index
    @fornecedores = Fornecedor.all
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.json
  def show
  end

  # GET /fornecedores/new
  def new
    @fornecedor = Fornecedor.new(pessoa: PessoaFisica.new)
  end

  # GET /fornecedores/1/edit
  def edit
  end

  # POST /fornecedores
  # POST /fornecedores.json
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)

    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to @fornecedor, notice: 'Fornecedor was successfully created.' }
        format.json { render :show, status: :created, location: @fornecedor }
      else
        format.html { render :new }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedores/1
  # PATCH/PUT /fornecedores/1.json
  def update
    respond_to do |format|
      p fornecedor_params
      if @fornecedor.update(fornecedor_params)
        format.html { redirect_to @fornecedor, notice: 'Fornecedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @fornecedor }
      else
        format.html { render :edit }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.json
  def destroy
    @fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to fornecedores_url, notice: 'Fornecedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      #@fornecedor = Fornecedor.find(params[:id])
      if params[:id]
        @fornecedor = Fornecedor.includes(:pessoa).find(params[:id]) 
      else
        @fornecedor = Fornecedor.new(pessoa: PessoaJuridica.new)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fornecedor_params
      params[:fornecedor][:pessoa_attributes] = params[:pessoa_attributes]
      params.require(:fornecedor).permit(
        :situacao, 
        :observacoes, 
        :pessoa_id,
        pessoa_attributes:[
          :id,
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
