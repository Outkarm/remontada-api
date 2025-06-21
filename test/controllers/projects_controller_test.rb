require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url, as: :json
    assert_response :success
  end

  test "should create project" do
    assert_difference("Project.count") do
      post projects_url, params: { project: { badge_list: @project.badge_list, detailed_text: @project.detailed_text, image_url: @project.image_url, live_link: @project.live_link, name: @project.name, source_link: @project.source_link, summary_text: @project.summary_text } }, as: :json
    end

    assert_response :created
  end

  test "should show project" do
    get project_url(@project), as: :json
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { badge_list: @project.badge_list, detailed_text: @project.detailed_text, image_url: @project.image_url, live_link: @project.live_link, name: @project.name, source_link: @project.source_link, summary_text: @project.summary_text } }, as: :json
    assert_response :success
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete project_url(@project), as: :json
    end

    assert_response :no_content
  end
end
