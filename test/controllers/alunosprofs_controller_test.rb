require 'test_helper'

class AlunosprofsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alunosprof = alunosprofs(:one)
  end

  test "should get index" do
    get alunosprofs_url
    assert_response :success
  end

  test "should get new" do
    get new_alunosprof_url
    assert_response :success
  end

  test "should create alunosprof" do
    assert_difference('Alunosprof.count') do
      post alunosprofs_url, params: { alunosprof: { aluno_id: @alunosprof.aluno_id, professor_id: @alunosprof.professor_id } }
    end

    assert_redirected_to alunosprof_url(Alunosprof.last)
  end

  test "should show alunosprof" do
    get alunosprof_url(@alunosprof)
    assert_response :success
  end

  test "should get edit" do
    get edit_alunosprof_url(@alunosprof)
    assert_response :success
  end

  test "should update alunosprof" do
    patch alunosprof_url(@alunosprof), params: { alunosprof: { aluno_id: @alunosprof.aluno_id, professor_id: @alunosprof.professor_id } }
    assert_redirected_to alunosprof_url(@alunosprof)
  end

  test "should destroy alunosprof" do
    assert_difference('Alunosprof.count', -1) do
      delete alunosprof_url(@alunosprof)
    end

    assert_redirected_to alunosprofs_url
  end
end
