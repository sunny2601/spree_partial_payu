Deface::Override.new(
  virtual_path: 'spree/admin/payment_methods/_form',
  name: 'add partial payment form fields',
  insert_after: "[data-hook='name']",
  text: %q{
    <div data-hook="name" class="form-group">
        <%= label_tag :partial_percentage %><br>
        <%= text_field :payment_method, :partial_percentage, :placeholder => "should be grater than 0" %>
      </div>
  })
