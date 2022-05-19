class DeleteLineItemController < ApplicationController
    def destroy
        @line_item = LineItem.find(params[:id])
        @line_item.destroy

        redirect_to store_index_url, notice: "Line item was successfully destroyed."
    end
end