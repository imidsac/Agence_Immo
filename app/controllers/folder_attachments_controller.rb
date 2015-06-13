class FolderAttachmentsController < ApplicationController
  before_action :set_folder_attachment, only: [:show, :edit, :update, :destroy]

  # GET /folder_attachments
  # GET /folder_attachments.json
  def index
    @folder_attachments = FolderAttachment.all
  end

  # GET /folder_attachments/1
  # GET /folder_attachments/1.json
  def show
  end

  # GET /folder_attachments/new
  def new
    @folder_attachment = FolderAttachment.new
  end

  # GET /folder_attachments/1/edit
  def edit
  end

  # POST /folder_attachments
  # POST /folder_attachments.json
  def create
    @folder_attachment = FolderAttachment.new(folder_attachment_params)

    respond_to do |format|
      if @folder_attachment.save
        format.html { redirect_to @folder_attachment, notice: 'Folder attachment was successfully created.' }
        format.json { render :show, status: :created, location: @folder_attachment }
      else
        format.html { render :new }
        format.json { render json: @folder_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folder_attachments/1
  # PATCH/PUT /folder_attachments/1.json
  def update
    respond_to do |format|
      if @folder_attachment.update(folder_attachment_params)
        format.html { redirect_to @folder_attachment, notice: 'Folder attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @folder_attachment }
      else
        format.html { render :edit }
        format.json { render json: @folder_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folder_attachments/1
  # DELETE /folder_attachments/1.json
  def destroy
    @folder_attachment.destroy
    respond_to do |format|
      format.html { redirect_to folder_attachments_url, notice: 'Folder attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder_attachment
      @folder_attachment = FolderAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def folder_attachment_params
      params.require(:folder_attachment).permit(:client_id, :file_name)
    end
end
