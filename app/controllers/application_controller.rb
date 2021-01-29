class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # モジュールの読み込み
  include SessionsHelper
  
end
