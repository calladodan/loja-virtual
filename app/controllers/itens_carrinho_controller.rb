class ItensCarrinhoController < ApplicationController
  before_action :set_item_carrinho, only: [:show, :edit, :update, :destroy]

  # GET /itens_carrinho
  # GET /itens_carrinho.json
  def index
    @itens_carrinho = ItemCarrinho.all
  end

  # GET /itens_carrinho/1
  # GET /itens_carrinho/1.json
  def show
  end

  # GET /itens_carrinho/new
  def new
    @item_carrinho = ItemCarrinho.new
  end

  # GET /itens_carrinho/1/edit
  def edit
  end

  # POST /itens_carrinho
  # POST /itens_carrinho.json
  def create
    @item_carrinho = ItemCarrinho.new(item_carrinho_params)

    respond_to do |format|
      if @item_carrinho.save
        format.html { redirect_to @item_carrinho, notice: 'Item carrinho was successfully created.' }
        format.json { render :show, status: :created, location: @item_carrinho }
      else
        format.html { render :new }
        format.json { render json: @item_carrinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itens_carrinho/1
  # PATCH/PUT /itens_carrinho/1.json
  def update
    respond_to do |format|
      if @item_carrinho.update(item_carrinho_params)
        format.html { redirect_to @item_carrinho, notice: 'Item carrinho was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_carrinho }
      else
        format.html { render :edit }
        format.json { render json: @item_carrinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itens_carrinho/1
  # DELETE /itens_carrinho/1.json
  def destroy
    @item_carrinho.destroy
    respond_to do |format|
      format.html { redirect_to itens_carrinho_url, notice: 'Item carrinho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_carrinho
      @item_carrinho = ItemCarrinho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_carrinho_params
      params.require(:item_carrinho).permit(:item_id, :carrinho_id, :qtd_adicionada, :qtd_reservada)
    end
end
