class ApplicationController < ActionController::Base
  layout 'application'

  helper_method  :current_ability, :current_usuario

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end


  private
  def current_ability
    @current_ability ||= Ability.new(current_usuario)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end


end
