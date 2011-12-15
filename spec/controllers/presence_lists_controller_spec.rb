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

describe PresenceListsController do

  # This should return the minimal set of attributes required to create a valid
  # PresenceList. As you add validations to PresenceList, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all presence_lists as @presence_lists" do
      presence_list = PresenceList.create! valid_attributes
      get :index
      assigns(:presence_lists).should eq([presence_list])
    end
  end

  describe "GET show" do
    it "assigns the requested presence_list as @presence_list" do
      presence_list = PresenceList.create! valid_attributes
      get :show, :id => presence_list.id
      assigns(:presence_list).should eq(presence_list)
    end
  end

  describe "GET new" do
    it "assigns a new presence_list as @presence_list" do
      get :new
      assigns(:presence_list).should be_a_new(PresenceList)
    end
  end

  describe "GET edit" do
    it "assigns the requested presence_list as @presence_list" do
      presence_list = PresenceList.create! valid_attributes
      get :edit, :id => presence_list.id
      assigns(:presence_list).should eq(presence_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PresenceList" do
        expect {
          post :create, :presence_list => valid_attributes
        }.to change(PresenceList, :count).by(1)
      end

      it "assigns a newly created presence_list as @presence_list" do
        post :create, :presence_list => valid_attributes
        assigns(:presence_list).should be_a(PresenceList)
        assigns(:presence_list).should be_persisted
      end

      it "redirects to the created presence_list" do
        post :create, :presence_list => valid_attributes
        response.should redirect_to(PresenceList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved presence_list as @presence_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        PresenceList.any_instance.stub(:save).and_return(false)
        post :create, :presence_list => {}
        assigns(:presence_list).should be_a_new(PresenceList)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PresenceList.any_instance.stub(:save).and_return(false)
        post :create, :presence_list => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested presence_list" do
        presence_list = PresenceList.create! valid_attributes
        # Assuming there are no other presence_lists in the database, this
        # specifies that the PresenceList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PresenceList.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => presence_list.id, :presence_list => {'these' => 'params'}
      end

      it "assigns the requested presence_list as @presence_list" do
        presence_list = PresenceList.create! valid_attributes
        put :update, :id => presence_list.id, :presence_list => valid_attributes
        assigns(:presence_list).should eq(presence_list)
      end

      it "redirects to the presence_list" do
        presence_list = PresenceList.create! valid_attributes
        put :update, :id => presence_list.id, :presence_list => valid_attributes
        response.should redirect_to(presence_list)
      end
    end

    describe "with invalid params" do
      it "assigns the presence_list as @presence_list" do
        presence_list = PresenceList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PresenceList.any_instance.stub(:save).and_return(false)
        put :update, :id => presence_list.id, :presence_list => {}
        assigns(:presence_list).should eq(presence_list)
      end

      it "re-renders the 'edit' template" do
        presence_list = PresenceList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PresenceList.any_instance.stub(:save).and_return(false)
        put :update, :id => presence_list.id, :presence_list => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested presence_list" do
      presence_list = PresenceList.create! valid_attributes
      expect {
        delete :destroy, :id => presence_list.id
      }.to change(PresenceList, :count).by(-1)
    end

    it "redirects to the presence_lists list" do
      presence_list = PresenceList.create! valid_attributes
      delete :destroy, :id => presence_list.id
      response.should redirect_to(presence_lists_url)
    end
  end

end
