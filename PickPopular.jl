using Cascadia, Gumbo, HTTP, JSON

function returnMostPopularImageURL()
	r = HTTP.get("https://konachan.com/post/popular_recent")
	h = parsehtml(String(r.body))
	images = eachmatch(Selector(".inner"), h.root)
	image = images[1]
	href = eachmatch(Selector(".thumb"), image)[1].attributes["href"]
	return("https://konachan.com/$href")
end

function sentMessage(message::String)
	token = ENV["ChannelAccessToken"]
	println(message)
	content = Dict("type"=>"text", "text"=>message)
	data = "messages" => [content]
	println(JSON.json(data))
	req = HTTP.request("POST", "https://api.line.me/v2/bot/message/broadcast", ["Content-Type" => "application/json", "Authorization" => "Bearer {$token}"], JSON.json(data))
end

MostPopularImageURL = returnMostPopularImageURL()
sentMessage(MostPopularImageURL)
