class Patient < ActiveRecord::Base
    
    belongs_to:doctor
    
    validates_presence_of:first_name, message: "enter the first name please"
    validates_presence_of:last_name, message: "enter the last name please"
    
    validates_uniqueness_of:phone_number, allow_blank: true, scope: [:first_name, :last_name]
    validates_uniqueness_of:first_name
    validates_uniqueness_of:last_name
   
    
    validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
    validates_format_of :email, :with => /([a-zA-Z0-9]+)([\.{1}])?([a-zA-Z0-9]+)\@gmail([\.])com/, :on => :create
    
    
    def p_full_name
        "#{first_name} #{last_name}"
    end


    STATE = [['active', true], ['Inactive', false]]
end


