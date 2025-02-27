require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @course = courses(:one)

    login_as(@user)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "p", text: "Courses"
  end

  test "should create course" do
    visit courses_url
    click_on "New course"

    fill_in_rich_text_area "Description", with: @course.description
    fill_in "Title", with: @course.title
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "should update Course" do
    visit course_url(@course)
    click_on "Edit this course", match: :first

    fill_in_rich_text_area "Description", with: @course.description
    fill_in "Title", with: @course.title
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "should destroy Course" do
    visit course_url(@course)
    accept_alert do
      click_on "Destroy this course", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
