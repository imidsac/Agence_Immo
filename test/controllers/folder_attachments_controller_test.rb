require 'test_helper'

class FolderAttachmentsControllerTest < ActionController::TestCase
  setup do
    @folder_attachment = folder_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folder_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folder_attachment" do
    assert_difference('FolderAttachment.count') do
      post :create, folder_attachment: { client_id: @folder_attachment.client_id, name_file: @folder_attachment.name_file, owner_id: @folder_attachment.owner_id }
    end

    assert_redirected_to folder_attachment_path(assigns(:folder_attachment))
  end

  test "should show folder_attachment" do
    get :show, id: @folder_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @folder_attachment
    assert_response :success
  end

  test "should update folder_attachment" do
    patch :update, id: @folder_attachment, folder_attachment: { client_id: @folder_attachment.client_id, name_file: @folder_attachment.name_file, owner_id: @folder_attachment.owner_id }
    assert_redirected_to folder_attachment_path(assigns(:folder_attachment))
  end

  test "should destroy folder_attachment" do
    assert_difference('FolderAttachment.count', -1) do
      delete :destroy, id: @folder_attachment
    end

    assert_redirected_to folder_attachments_path
  end
end
