Rails.configuration.stripe = {
  :publishable_key => 'pk_test_51Mh8VwGHXclfvF1AUtXoa491IUj50VcslxvC86ReHpgHwNYfPojsNQT35hnkVTZrQb8wVS0w5WTTqdnNb0WZpU6p00LHrJ1zCu',
  :secret_key      => 'sk_test_51Mh8VwGHXclfvF1A48xiXIR2HQoGCqqoW33aNUQbxspfJMXVrnaCASyt3qf3s1AjIcUsPNSuy1PMqmfzx7EE7un1000H0G1tIe'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
