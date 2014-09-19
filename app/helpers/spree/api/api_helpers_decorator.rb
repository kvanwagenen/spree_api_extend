Spree::Api::ApiHelpers.class_eval do

  alias_method :orig_order_attributes, :order_attributes

  @@order_attributes = []
  def self.extended_order_attributes
    @@order_attributes
  end
  def order_attributes
    orig_order_attributes + Spree::Api::ApiHelpers.extended_order_attributes
  end

end