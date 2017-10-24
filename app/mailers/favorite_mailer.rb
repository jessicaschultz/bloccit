class FavoriteMailer < ApplicationMailer
  default from: "jessicaschultz1203@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@peaceful-atoll-55835>"
    headers["In-Reply-To"] = "<post/#{post.id}@peaceful-atoll-55835>"
    headers["References"] = "<post/#{post.id}@peaceful-atoll-55835>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
