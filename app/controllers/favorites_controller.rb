class FavoritesController < ApplicationController
  def create
    sheet = Sheet.find(params[:sheet_id])
    current_user.favorited_sheets << sheet
    render nothing: true
  end

  def destroy
    sheet = Sheet.find(params[:sheet_id])
    current_user.favorited_sheets.delete(sheet)
    render nothing: true
  end

end
