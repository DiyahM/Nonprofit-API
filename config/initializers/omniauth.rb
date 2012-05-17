Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dwolla, 'KYICQQA9z5R4As0dX8MPG2vxI+zx9ni+qYM4AiGOKraXP6FPmq', 'C/BVl6MOK6W/TLqUVxHOfaQRTl8gYEUaTjUcJezA7XX/Q418LQ'
  provider :identity
  provider :paypal, '2870a0320de3a612be880ae822a9fee4', '08cd23e466d07ed3'
end  

