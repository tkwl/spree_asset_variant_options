Spree::Variant.class_eval do
  has_many :variant_images_new, class_name: '::Spree::VariantImage'
  has_many :images_for_variant, through: :variant_images_new, source: :image
  has_many :images, -> { order(:position) }, as: :viewable

  def images
    images_for_variant
  end
end
