n = 1
while n < 3.5
  source = "http://www.transfermarkt.ru/wettbewerbe/europa?page=#{n+1}"
  page = Nokogiri::HTML(open(source), nil, 'UTF-8')
  link_array = page.css("td.hauptlink").to_a
  link_array.each do |link|
    array_with_links = link.to_s.split"href"
    pre_logo = array_with_links.second.to_s.split"src"
    no_slice_logo_url = pre_logo.second.to_s.split("title").first
    pre_name = array_with_links.third.to_s.split.first
    if no_slice_logo_url.nil?
      elsif pre_name.nil?
      else
        no_slice_logo_url.slice!(-2..-1)
        no_slice_logo_url.slice!(0..2)
        logo_url = no_slice_logo_url
        name = pre_name.split("/").second
        pre_name.slice!(-1..-1)
        pre_name.slice!(0..2)
        link = pre_name
        puts name
        Competition.create!(link: link, avatar: logo_url, name: name)
    end
  end
  n=n+1
end


