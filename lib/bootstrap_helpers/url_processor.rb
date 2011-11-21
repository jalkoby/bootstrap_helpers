module UrlProcessor

  def navigation_item_class(url_value)
    case url_value
    when Hash
      url_value[:controller]=controller.controller_name unless url_value[:controller]
      "active" if url_value[:controller]==controller.controller_name and url_value[:action]==controller.action_name
    when String
      "active" if request.fullpath.split("?")[0] == url_value.split("?")[0]
    end
  end
end