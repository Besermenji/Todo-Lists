require 'test_helper'

class TodoItemsControllerTest < ActionController::TestCase
  setup do
    @todo_item = todo_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_item" do
    assert_difference('TodoItem.count') do
<<<<<<< HEAD
      post :create, todo_item: { completed: @todo_item.completed, description: @todo_item.description, due_date: @todo_item.due_date, title: @todo_item.title }
=======
      post :create, todo_item: {  }
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
    end

    assert_redirected_to todo_item_path(assigns(:todo_item))
  end

  test "should show todo_item" do
    get :show, id: @todo_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_item
    assert_response :success
  end

  test "should update todo_item" do
<<<<<<< HEAD
    patch :update, id: @todo_item, todo_item: { completed: @todo_item.completed, description: @todo_item.description, due_date: @todo_item.due_date, title: @todo_item.title }
=======
    patch :update, id: @todo_item, todo_item: {  }
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
    assert_redirected_to todo_item_path(assigns(:todo_item))
  end

  test "should destroy todo_item" do
    assert_difference('TodoItem.count', -1) do
      delete :destroy, id: @todo_item
    end

    assert_redirected_to todo_items_path
  end
end
