class EntriesController < ActionController::Base

  def index
    @entries = Entry.all
    render status: 200, json: @entries.to_json
  end

  def show
    @entry = Entry.find(params[:id])
    render status: 200, json: @entry.to_json
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      render status: 200, json: @entry.to_json
    end
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.save
      render status: 200, json: @entry.to_json
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    if @song.destroy
      render json: @song.to_json, status: 200
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:author, :title, :mood, :content)
  end

end
