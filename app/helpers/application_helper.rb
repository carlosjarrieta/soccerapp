module ApplicationHelper
  def disabled_item(valor)
    if valor == true
      return "disabled"
     else
       return ""
    end
  end


  def flash_class(level)
    case level
    when "notice" then "alert alert-success"
    when "success" then "alert alert-success"
    when "error" then "alert alert-danger"
    when "alert" then "alert alert-warning"
    end
  end
end
