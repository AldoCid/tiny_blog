class User < ApplicationRecord
  has_many :posts
  has_and_belongs_to_many :followers,class_name:"User",
                                    join_table:"followers",
                                    association_foreign_key: "follower_id"

  has_attached_file :avatar, styles: { medium: "300x300>" ,thumb: "100x100"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def follows?(user)
    self.followers.include?(user)
  end

end
