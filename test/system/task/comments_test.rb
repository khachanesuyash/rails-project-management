require "application_system_test_case"

class Task::CommentsTest < ApplicationSystemTestCase
  setup do
    @task_comment = task_comments(:one)
  end

  test "visiting the index" do
    visit task_comments_url
    assert_selector "h1", text: "Task/Comments"
  end

  test "creating a Comment" do
    visit task_comments_url
    click_on "New Task/Comment"

    fill_in "Body", with: @task_comment.body
    fill_in "Task", with: @task_comment.task_id
    fill_in "User", with: @task_comment.user_id
    click_on "Create Comment"

    assert_text "Comment was successfully created"
    click_on "Back"
  end

  test "updating a Comment" do
    visit task_comments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @task_comment.body
    fill_in "Task", with: @task_comment.task_id
    fill_in "User", with: @task_comment.user_id
    click_on "Update Comment"

    assert_text "Comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment" do
    visit task_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment was successfully destroyed"
  end
end
