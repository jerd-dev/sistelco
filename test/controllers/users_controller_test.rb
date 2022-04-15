require 'test_helper'
class UsersControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of users' do
        get users_path

        assert_response :success
        assert_select '.user', 3
    end

    test 'render a detailed user page' do
        get user_path(users(:jonathan))
        
        assert_response :success
        assert_select '.nombre', 'JONATHAN RUIZ'
        assert_select '.type_person', 'NATURAL'
        assert_select '.telefono_p', '04241337140'

    end

    test 'render a new user form' do
        get new_user_path
        assert_response :success
        assert_select 'form'
    end

end