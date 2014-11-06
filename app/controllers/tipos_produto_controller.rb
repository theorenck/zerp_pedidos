class TiposProdutoController < ApplicationController
  before_action :set_tipo_produto, only: [:show, :edit, :update, :destroy]

  # GET /tipos_produto
  # GET /tipos_produto.json
  def index
    @tipos_produto = TipoProduto.all
  end

  # GET /tipos_produto/1
  # GET /tipos_produto/1.json
  def show
  end

  # GET /tipos_produto/new
  def new
    @tipo_produto = TipoProduto.new
  end

  # GET /tipos_produto/1/edit
  def edit
  end

  # POST /tipos_produto
  # POST /tipos_produto.json
  def create
    @tipo_produto = TipoProduto.new(tipo_produto_params)

    respond_to do |format|
      if @tipo_produto.save
        format.html { redirect_to @tipo_produto, notice: 'Tipo produto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_produto }
      else
        format.html { render :new }
        format.json { render json: @tipo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_produto/1
  # PATCH/PUT /tipos_produto/1.json
  def update
    respond_to do |format|
      if @tipo_produto.update(tipo_produto_params)
        format.html { redirect_to @tipo_produto, notice: 'Tipo produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_produto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_produto/1
  # DELETE /tipos_produto/1.json
  def destroy
    @tipo_produto.destroy
    respond_to do |format|
      format.html { redirect_to tipos_produto_url, notice: 'Tipo produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_produto
      @tipo_produto = TipoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_produto_params
      params.require(:tipo_produto).permit(:descricao)
    end
end
