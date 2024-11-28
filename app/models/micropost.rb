class Micropost < ApplicationRecord
  belongs_to :user #->user.micropost.create
  default_scope -> {order(created_at: :desc)}#新しい順にmicropostを表示
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140} #140以上は有料

  #inputは英語のみ
  validates :content, presence: true, format: {with: /\A[a-zA-Z\s]+\z/, message: "English please 😗"}
end