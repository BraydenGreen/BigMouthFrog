class FeaturedClientsController < ApplicationController
  before_action :set_featured_client, only: [:show, :edit, :update, :destroy]
  before_action :require_login#, except: [:index, :show]

  # GET /featured_clients
  # GET /featured_clients.json
  def index
    @featured_clients = FeaturedClient.all
  end

  # GET /featured_clients/1
  # GET /featured_clients/1.json
  def show
  end

  # GET /featured_clients/new
  def new
    @featured_client = FeaturedClient.new
  end

  # GET /featured_clients/1/edit
  def edit
  end

  # POST /featured_clients
  # POST /featured_clients.json
  def create
    @featured_client = FeaturedClient.new(featured_client_params)

    respond_to do |format|
      if @featured_client.save
        format.html { redirect_to @featured_client, notice: 'Featured client was successfully created.' }
        format.json { render :show, status: :created, location: @featured_client }
      else
        format.html { render :new }
        format.json { render json: @featured_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_clients/1
  # PATCH/PUT /featured_clients/1.json
  def update
    respond_to do |format|
      if @featured_client.update(featured_client_params)
        format.html { redirect_to @featured_client, notice: 'Featured client was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_client }
      else
        format.html { render :edit }
        format.json { render json: @featured_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_clients/1
  # DELETE /featured_clients/1.json
  def destroy
    @featured_client.destroy
    respond_to do |format|
      format.html { redirect_to featured_clients_url, notice: 'Featured client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_client
      @featured_client = FeaturedClient.find(params[:id])
    end

    def require_login
      unless user_signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_user_session_path # halts request cycle
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_client_params
      params.require(:featured_client).permit(:image, :website_name, :testimonial)
    end
end
