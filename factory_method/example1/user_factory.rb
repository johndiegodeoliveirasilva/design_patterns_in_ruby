class UserFactory
  def call(user_type)
    case user_type
    when "admin"
      Admin.new
    when "member"
      Member.new
    else
      Guest.new
    end
  end
end
