class ScrapyConfigsController < ApplicationController
  before_action :set_scrapy_config, only: [:show, :edit, :update, :destroy]

  # GET /scrapy_configs
  # GET /scrapy_configs.json
  def index
    @scrapy_configs = ScrapyConfig.all



  end

  # GET /scrapy_configs/1
  # GET /scrapy_configs/1.json
  def show

  end

  # GET /scrapy_configs/new
  def new

    @scrapy_config = ScrapyConfig.new

    @scrapy_config.attachments.build

  end

  # GET /scrapy_configs/1/edit
  def edit
  end

  # POST /scrapy_configs
  # POST /scrapy_configs.json
  def create
    @scrapy_config = ScrapyConfig.new((scrapy_config_params).except(:approved_senders,:approved_mail_subjects))
    #@scrapy_config = ScrapyConfig.new((scrapy_config_params).except(:approved_mail_subjects))
    @scrapy_config.approved_senders = scrapy_config_params[:approved_senders].split(",").select {|element| !element.blank? }
    @scrapy_config.approved_mail_subjects = scrapy_config_params[:approved_mail_subjects].split(",").select {|element| !element.blank? }



    respond_to do |format|
      if @scrapy_config.save
        format.html { redirect_to @scrapy_config, notice: 'Scrapy config was successfully created.' }
        format.json { render :show, status: :created, location: @scrapy_config }
      else
        format.html { render :new }
        format.json { render json: @scrapy_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrapy_configs/1
  # PATCH/PUT /scrapy_configs/1.json
  def update
    update_params = scrapy_config_params.except(:approved_senders, :approved_mail_subjects)
    update_params[:approved_senders] = scrapy_config_params[:approved_senders].split(",").select {|element| !element.blank? }
    update_params[:approved_mail_subjects] = scrapy_config_params[:approved_mail_subjects].split(",").select {|element| !element.blank? }
    respond_to do |format|
      if @scrapy_config.update(update_params)
        format.html { redirect_to @scrapy_config, notice: 'Scrapy config was successfully updated.' }
        format.json { render :show, status: :ok, location: @scrapy_config }
      else
        format.html { render :edit }
        format.json { render json: @scrapy_config.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /scrapy_configs/1
  # DELETE /scrapy_configs/1.json
  def destroy
    @scrapy_config.destroy
    respond_to do |format|
      format.html { redirect_to scrapy_configs_url, notice: 'Scrapy config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_scrapy_config
    @scrapy_config = ScrapyConfig.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def scrapy_config_params
    params.require(:scrapy_config).permit(:client_id, :tgm_assigned_mailbox, :approved_senders, :approved_mail_subjects, attachments_attributes: Attachment.attribute_names.map(&:to_sym).push(:_destroy))
  end
end