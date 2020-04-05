class MessagesController < ApplicationController

  # 新規投稿画面に対応するアクション
  def new
    @message = Message.new
  end

  # 新規登録画面に対応するアクション
  def create
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:title, :content)
  end
end
