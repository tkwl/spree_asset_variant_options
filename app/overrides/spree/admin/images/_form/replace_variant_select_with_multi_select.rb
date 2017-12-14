Deface::Override.new(:virtual_path => "spree/admin/images",
                     :name => "variant_image_multi_select",
                     :replace_contents => "[data-hook='variant']",
                     :text => "<%= f.label :viewable_id, Spree::Variant.model_name.human %>
                     <%= f.hidden_field :viewable_id, value: 1 %>
<%= f.select :viewable_ids, options_for_select(@variants, @image.variant_ids), {}, {multiple: true, :class => 'select2 fullwidth'} %>

<%# Keeping this script tag in the view for now.  %>
<script>
$('#image_viewable_ids')
    .on('change', function() {
        $('#image_viewable_id').val($(this).val()[0]);
    })
    .select2({
        allowClear: true,
        dropdownAutoWidth: true
    });
</script>


                     ",
                     :disabled => false)