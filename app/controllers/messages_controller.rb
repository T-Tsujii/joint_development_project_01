class MessagesController < ApplicationController

   # 一覧表示機能画面に対応するアクション
   def index
    @messages = Message.all
   end

  # 新規投稿画面に対応するアクション
  def new
    @message = Message.new
  end

  # 新規登録画面に対応するアクション
  def create
    Message.create(message_params)
  end

  # 詳細表示画面に対応するアクション
  def show
    @message = Message.find(params[:id])
  end

  # 編集表示画面に対応するアクション
  def edit
    @message = Message.find(params[:id])
  end

  # 更新表示画面に対応するアクション
  def update
    message = Message.find(params[:id])
    message.update(message_params)
  end

  # 削除表示画面に対応するアクション
  def destroy
    message = Message.find(params[:id])
    message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:title, :content)
  end
end
