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

    test 'allow to create a new user' do

        post users_path, params: {
            user: {
                nombre: 'PEDRO GONZALEZ',
                dni: '1111111',
                type_person: 'JURIDICA',
                fecha_emision: '02-10-2022',
                fecha_vencimiento: '02-10-2027',
                email: 'pedro@gmail.com',
                telefono_p: '04241234545',
                telefono_5: '04261234545',
            }
        } 

        assert_redirected_to users_path 
        assert_equal flash[:notice], 'El usuario se ha creado correctamente'
    end

    test 'not allow to create a new user with empty fields' do

        post users_path, params: {
            user: {
                nombre: '',
                dni: '1111111',
                type_person: 'JURIDICA',
                fecha_emision: '02-10-2022',
                fecha_vencimiento: '02-10-2027',
                email: 'pedro@gmail.com',
                telefono_p: '04241234545',
                telefono_5: '04261234545',
            }
        } 

        assert_response :unprocessable_entity
    end


end