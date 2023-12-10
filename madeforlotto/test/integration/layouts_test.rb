require "test_helper"

class LayoutsTest < ActionDispatch::IntegrationTest

  setup do
    @line = lines :one
  end

  test 'should display navbar, number form, and create form on Make Lines' do
    get root_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'form', 2
  end

  test 'should display navbar on FAQs' do
    get faqs_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
  end

  test 'should display navbar and read link on Load Lines' do
    get loadlines_path
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'a', "Show this line", 1
  end

  test 'should display navbar, update link, and delete button on show.html.erb' do
    get line_path(@line)
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'a', "Edit this line", 1
    assert_select 'form', "Destroy this line", 1
  end

  test 'should display navbar and update button on edit.html.erb' do
    get edit_line_path(@line)
    assert_select 'a', "Make Lines", 1
    assert_select 'a', "FAQs", 1
    assert_select 'a', "Load Lines", 1
    assert_select 'form', 1
  end

end
