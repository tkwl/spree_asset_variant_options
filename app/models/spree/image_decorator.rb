Spree::Image.class_eval do
  attr_accessor :viewable_ids

  has_many :variant_images, class_name: '::Spree::VariantImage'
  has_many :variants, through: :variant_images

  def variant_html_classes
    variant_ids.map { |variant| "#{variant}"}.join(" ")
  end

  def variant_html_attr
     variant_ids.map { |variant| "#{variant}"}.join(", ")
  end		    
end
