class User < ApplicationRecord
  before_save { self.email = email.downcase } #大文字小文字を区別せず、小文字として登録
  
  validates :name, presence: true, length: { maximum: 50 } #空はダメ、文字数は50文字以下
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #正規表現
  validates :email, presence: true, length: { maximum: 100 },format: {with: VALID_EMAIL_REGEX },uniqueness: true #空はダメ、文字数は100文字以下
  has_secure_password #パスワードのハッシュ化
  validates :password, presence: true, length: { minimum: 6 }# 最小文字数6文字以上
end
