require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    my_cookie = req.cookies.find { |cookie| cookie.try(:name) == "_rails_lite_project_app" }
    @session = my_cookie ? JSON.parse(my_cookie.value) : {}

  end

  def [](key)
  end

  def []=(key, val)
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
  end
end
