class Post < ActiveRecord::Base
  attr_accessor :user
  has_many :locks, as: :lockable
  validate :check_lock

  def lock
    @lock ||= self.locks.find(:first, order: 'created_at DESC')
  end

  def lock!
    self.locks << Lock.new(user: @user) if @user
  end

  def locked?
    return false unless self.lock
    true if self.lock.created_at > 1.hour.ago
  end

  private

  def check_lock
    if self.locked?
      errors.add(:locks, "Sorry, the post is locked by #{self.lock.user.email}") if self.locked? && self.lock.user != @user
    end
  end
end
