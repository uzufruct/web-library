require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get '/books'
    assert_response :success
  end

  test "should get new" do
    get '/books/new'
    assert_redirected_to '/users/sign_in'
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_redirected_to '/users/sign_in'
  end
end
