require 'spec_helper'
require 'rails_helper'
RSpec.describe Api::V1::UsersController  do
    describe 'index' do
        before do
           get :index
        end
    
        it "returns http success" do
            expect(response).to have_http_status(:success)  
        end
       
    end

    # to create user

    # describe "POST #create" do
    #     it "creates user" do 
    #         user_params = Factory.attributes_for(:user)
    #         expect { post :create, :user => user_params }.to change(User, :count).by(1) 
    #       end
    # end 

    describe 'create' do
        it 'successfully creates a new user' do
          expect{
              post :create, params: { :user => { :username => "testuser", :password_digest => "asdf" } }
            }.to change(User,:count).by(1)
        end
    end
    # describe 'PATCH #update' do
    #      it "updates the user" do
    #           patch :update, id: @user.id, user: { username: "xyz", password_digest: "xyz"}
    #           expect(response).to be_redirect
    #     end
    # end
    # describe "update" do
    #     # before do
    #     #    patch :update
    #     # end
    
    #     it "successfully updates the user" do
    #         expect(response).to have_http_status(:success)  
    #     end
    #     # it "unable to update user" do
    #     #     expect(response).to have_http_status(:)
    #     # end
       
    # end
    
    # describe "destroy" do
    #     it "user destroyed successfully" do
    #         expect(response).to have_http_status(:success)
    #     end
    # end
    
end