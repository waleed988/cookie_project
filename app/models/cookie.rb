class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true

  validates :storage, presence: true

  after_create :enqueue_cookie_cook_job

  def enqueue_cookie_cook_job
    CookieCookJob.new.perform(id)
  end

  def ready?
    self.status
  end
end
