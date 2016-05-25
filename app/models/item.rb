class Item < ActiveRecord::Base
    belongs_to :show
    belongs_to :compra
end
