require "test_helper"

class LayoutsTest < ActionDispatch::IntegrationTest

  setup do
    @line = lines :one
  end

  test 'Make Lines has NavBar, number form, and create form' do
    get root_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'form', 2
  end

  test 'FAQs has NavBar' do
    get faqs_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
  end

  test 'Load Lines has NavBar and line link' do
    get loadlines_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'a', "Show this line", 1
  end

  test 'show.html.erb has NavBar, edit link, and delete button' do
    get line_path(@line)
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'a', "Edit this line", 1
    assert_select 'form', "Destroy this line", 1
  end

  test 'edit.html.erb has NavBar and edit button' do
    get edit_line_path(@line)
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'form', 1
  end

end
