class DocumentsController < ApplicationController

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.create(document_params)
  end

  def show
    @document = Document.find(params['id'])
  end

  def update
    @document.update(document_params)
  end

  def destroy
    @document = Document.find(params['id'])
    @document.pdf = nil
    @document.save
    redirect_to document_path
  end

  private
    def document_params
      params.require(:document).permit(:pdf, :name)
    end

end
