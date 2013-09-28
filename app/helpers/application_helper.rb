module ApplicationHelper
  def title(subtitle=nil)
    "PecaUploader" << (subtitle.nil? ? "" : "- #{subtitle}")
  end
end
