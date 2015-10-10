class App
  include Mongoid::Document
  attr_reader :generated_secret
  before_create :generate_secret

  field :name, type: String
  field :url, type: String
  field :secret_hash, type: String

  private

  def generate_secret
    return unless secret_hash.blank?

    @generated_secret = SecureRandom.base64(128)
    self.secret_hash = Digest::SHA256.base64digest @generated_secret
  end
end
