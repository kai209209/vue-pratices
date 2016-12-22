class StaticsController < ApplicationController
  def index
  end

  def vid
    ActionCable.server.broadcast("chat_room", content: params[:content])
    head :no_content
  end
end
