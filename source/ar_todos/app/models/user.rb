class User < ActiveRecord::Base

  def high_score(new_score)
    if new_score > self.score
      self.score == new_score
      self.save
    end
  end

  def new_user(name, username)
    User.create(name: name, username: username )
  end

  def user_login(username)

  end
end