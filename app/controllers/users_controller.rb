class UsersController < ApplicationController
  def create
    begin
      create_user_res = app.auth.create_user(email: params[:email], password: params[:password])
    rescue Faraday::BadRequestError => e
      ErrorUtility.logger(e)
      error_json = JSON.parse(e.response[:body])
      error_msg = error_json['error']['message']
      return render_bad_request_error('メールアドレスはすでに登録されています', error_json) if error_msg == 'EMAIL_EXISTS'
    end
    user = User.create(firebase_uid: params[:firebase_uid])
  end
end
