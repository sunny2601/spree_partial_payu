module Spree
  class Gateway::PayupaisaExpress < Gateway
    preference :merchantkey, :string
    preference :merchantsalt, :string
    preference :merchantid, :string
    preference :server, :string, default: 'test'
    preference :solution, :string, default: 'Mark'
    preference :logourl, :string, default: ''


    def provider 
      puts preferred_merchantkey 
      self
    end 

    def supports?(source)
      true
    end

    def auto_capture?
      true
    end

    def method_type
      'payupaisa'
    end

    def purchase(amount, express_checkout, gateway_options={})

      if true
        Class.new do
          def success?; true; end
          def authorization; nil; end
        end.new
      else
      end
    end

    def refund(payment, amount)
       puts 'In Refund'
    end
  end
end

