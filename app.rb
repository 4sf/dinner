require 'sinatra'

get '/' do
	send_file 'home.html'
end

get '/dinner' do
	# 점심추천 로직
	# 1. 배열 만들어 메뉴 넣고
	# 2. 랜덤으로 하나 뽑아 출력
	menu = ["참치회", "성게알밥", "스테이크"]
	@choice = menu.sample
	@url = {
		"참치회" => 'http://image.chosun.com/sitedata/image/201503/16/2015031602655_3.jpg',
		"성게알밥" => 'http://cfile215.uf.daum.net/R400x0/210B5F3453E2D5B12D7782',
		"스테이크" => 'http://cfile4.uf.tistory.com/image/211B773456694F000F6197'
	}

	# url = ""
	# if choice == "참치회"
	# 	url = 
	# elsif choice == "성게알밥"
	# 	url = 
	# elsif choice == "스테이크"
	# 	url = 
	# end

	# "<p>#{choice}</p>
	# <img src=#{url[choice]}>
	# "
	erb :dinner
end

get '/me' do
	send_file 'me.html'
end
