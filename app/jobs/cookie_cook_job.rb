class CookieCookJob < ApplicationJob
  queue_as :default

  def perform(cookie_id)
    cookie = Cookie.find_by(id: cookie_id)
    return unless cookie

    sleep 30.seconds

    cookie.update(status: true)
  end
end
