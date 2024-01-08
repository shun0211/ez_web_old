class MembershipController < ApplicationController
  # before_action :authorize_request

  def current_user
    # @current_user
    @current_user ||= User.find_or_create_by(firebase_uid: "123456")
  end

  private

  def authorize_request
    service = Auths::AuthorizationService.new(id_token)
    service.authenticate_request!
    @current_user = service.user

  rescue Firebase::Admin::Auth::InvalidTokenError,
         Firebase::Admin::Auth::ExpiredTokenError,
         Firebase::Admin::Auth::CertificateRequestError,
         Firebase::Admin::Auth::InvalidCertificateError => e
    render_unauthorized_error('不正なIDトークンです👎', "error: #{e.class} message: #{e.message}")
  end
end
