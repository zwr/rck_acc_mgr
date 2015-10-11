require 'rails_helper'

RSpec.describe 'Apps', type: :request do
  describe 'GET /apps' do
    it 'works! (now write some real specs)' do
      @user = FactoryGirl.create(:admin)
      post_via_redirect user_session_path,
                        email: @user.email,
                        password: @user.password,
                        password_confirmation: @user.password
      expect(response).to have_http_status(200)
      get login_path
      expect(response).to have_http_status(200)
    end
  end
end
