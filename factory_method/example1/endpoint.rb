require "user_factory"
class Endpoint
  def home(params)
    user = UserFactory.call(params[:user_type])
    full_name = [user.first_name, user.last_name].join(" ")
    { name: full_name}.to_json
  end

  def home(params)
    user = UserFactory.call(params[:user_type])
    { first_name: user.first_name}.to_json
  end
end
