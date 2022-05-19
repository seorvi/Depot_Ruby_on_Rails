class ProductsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "products"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

# I generate this file whith: bin/rails generate channel products
# line 3