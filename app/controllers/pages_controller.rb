class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
    # raise
    if params[:member_name].present?
      @members = @members.select do |member|
        member == params[:member_name]
        # member.downcase.include? params[:member_name].downcase
      end
    end
  end
end
