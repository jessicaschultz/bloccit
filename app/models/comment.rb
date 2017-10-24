class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, length: {minimum: 5}, presence: true
  validates :user, presence: true

  #callback
  after_create :send_favorite_emails

  private

  def send_favorite_emails
    #finds the favorites associated with its comment's post, and loops over them
    post.favorites.each do |favorite|
      FavoriteMailer.new_comment(favorite.user, post, self).deliver_now
    end
  end
end
