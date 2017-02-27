class LoginDetails
    include ActiveModel::Validations
    include ActiveModel::Model

    attr_accessor :email, :password
    validates_presence_of :email, :password
end
