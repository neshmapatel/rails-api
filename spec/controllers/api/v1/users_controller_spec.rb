require 'spec_helper'
require 'rails_helper'
RSpec.describe Api::V1::UsersController  do
    
    describe "GET #index" do
        before do
           get :index
        end
    
        it "returns http success" do
            expect(response).to have_http_status(:success)  
        end
       
    end

    describe 'create' do
        it 'successfully creates a new user' do
          expect{
              post :create, params: { :user => { :username => "testuser", :password_digest => "asdf" } }
            }.to change(User,:count).by(1)
        end
    end
  
    describe "update" do
        it "successfully updates the user" do
            expect(response).to have_http_status(:success)  
        end       
    end
    
    describe "destroy" do
        it "user destroyed successfully" do
            expect(response).to have_http_status(:success)
        end
    end
    
end

