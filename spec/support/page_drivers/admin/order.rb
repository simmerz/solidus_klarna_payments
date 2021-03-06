# frozen_string_literal: true

module PageDrivers
  module Admin
    class Order < Base
      set_url '/admin/orders/{number}/edit'

      section :menu, PageDrivers::Admin::OrderMenu, '.container nav ul.tabs'
    end
  end
end
