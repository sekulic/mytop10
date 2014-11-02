module ApplicationHelper
  def is_active?(link_path)
    if current_page?(link_path)
      "active"
    else
      ""
    end
  end  
  def is_active_page?(link_path)
    if current_page?(link_path)
      return "active" if request.query_parameters.empty?     
    else
      ""
    end    
  end  
  def access
    redirect_to root_path unless current_user && current_user.admin? 
  end       
end
