require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::TitlesController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Title. As you add validations to Admin::Title, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::TitlesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all admin_titles as @admin_titles" do
      title = Admin::Title.create! valid_attributes
      get :index, {}, valid_session
      assigns(:admin_titles).should eq([title])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_title as @admin_title" do
      title = Admin::Title.create! valid_attributes
      get :show, {:id => title.to_param}, valid_session
      assigns(:admin_title).should eq(title)
    end
  end

  describe "GET new" do
    it "assigns a new admin_title as @admin_title" do
      get :new, {}, valid_session
      assigns(:admin_title).should be_a_new(Admin::Title)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_title as @admin_title" do
      title = Admin::Title.create! valid_attributes
      get :edit, {:id => title.to_param}, valid_session
      assigns(:admin_title).should eq(title)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Title" do
        expect {
          post :create, {:admin_title => valid_attributes}, valid_session
        }.to change(Admin::Title, :count).by(1)
      end

      it "assigns a newly created admin_title as @admin_title" do
        post :create, {:admin_title => valid_attributes}, valid_session
        assigns(:admin_title).should be_a(Admin::Title)
        assigns(:admin_title).should be_persisted
      end

      it "redirects to the created admin_title" do
        post :create, {:admin_title => valid_attributes}, valid_session
        response.should redirect_to(Admin::Title.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_title as @admin_title" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Title.any_instance.stub(:save).and_return(false)
        post :create, {:admin_title => {}}, valid_session
        assigns(:admin_title).should be_a_new(Admin::Title)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Title.any_instance.stub(:save).and_return(false)
        post :create, {:admin_title => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_title" do
        title = Admin::Title.create! valid_attributes
        # Assuming there are no other admin_titles in the database, this
        # specifies that the Admin::Title created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::Title.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => title.to_param, :admin_title => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested admin_title as @admin_title" do
        title = Admin::Title.create! valid_attributes
        put :update, {:id => title.to_param, :admin_title => valid_attributes}, valid_session
        assigns(:admin_title).should eq(title)
      end

      it "redirects to the admin_title" do
        title = Admin::Title.create! valid_attributes
        put :update, {:id => title.to_param, :admin_title => valid_attributes}, valid_session
        response.should redirect_to(title)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_title as @admin_title" do
        title = Admin::Title.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Title.any_instance.stub(:save).and_return(false)
        put :update, {:id => title.to_param, :admin_title => {}}, valid_session
        assigns(:admin_title).should eq(title)
      end

      it "re-renders the 'edit' template" do
        title = Admin::Title.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Title.any_instance.stub(:save).and_return(false)
        put :update, {:id => title.to_param, :admin_title => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_title" do
      title = Admin::Title.create! valid_attributes
      expect {
        delete :destroy, {:id => title.to_param}, valid_session
      }.to change(Admin::Title, :count).by(-1)
    end

    it "redirects to the admin_titles list" do
      title = Admin::Title.create! valid_attributes
      delete :destroy, {:id => title.to_param}, valid_session
      response.should redirect_to(admin_titles_url)
    end
  end

end
