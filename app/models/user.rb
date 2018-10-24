class User < ApplicationRecord
  has_many :teachers
  has_many :links
  has_many :teachings, through: :teachers
  validates :email, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]


  def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.name = auth.info.name
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
     end
   end

   def self.most_common_teacher(user)
     user.teachers.sort_by {|teacher| teacher.teachings.count}.last.name
   end
end
