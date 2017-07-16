require 'rails_helper'

describe 'user/show_profile' do
  it 'displays user profile' do
    assign(:user, User.create(name:"Teste",email:"teste@teste.com",password:"teste1234",password_confirmation:"teste1234"))
    login_as(:user, :scope => :user)

    render

    rendered.should contain('Teste')

  end
end
