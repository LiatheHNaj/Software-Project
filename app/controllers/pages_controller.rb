class PagesController < ApplicationController

    def login
        respond_to do |format|
          format.html { render :login }
        end
      end

      def menu
        respond_to do |format|
          format.html { render :menu }
        end
      end

end
