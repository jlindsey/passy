# Concern for dealing with encrypted fields
module Encryption
  extend ActiveSupport::Concern

  included do
    def self.encrypted_field(field)
    end
  end

protected

  def __encrypt_text(txt)
  end

  def __decrypt_text(txt)
  end

  def __get_cipher(iv:, salt:)
  end
end

