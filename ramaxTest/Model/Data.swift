/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct JData : Codable {
	let type : String?
	let id : String?
	let slug : String?
	let url : String?
	let bitly_gif_url : String?
	let bitly_url : String?
	let embed_url : String?
	let username : String?
	let source : String?
	let rating : String?
	let content_url : String?
	let source_tld : String?
	let source_post_url : String?
	let is_sticker : Int?
	let import_datetime : String?
	let trending_datetime : String?
	let user : User?
	let images : Images?
	let title : String?
	let _score : Int?
	let analytics : Analytics?

	enum CodingKeys: String, CodingKey {

		case type = "type"
		case id = "id"
		case slug = "slug"
		case url = "url"
		case bitly_gif_url = "bitly_gif_url"
		case bitly_url = "bitly_url"
		case embed_url = "embed_url"
		case username = "username"
		case source = "source"
		case rating = "rating"
		case content_url = "content_url"
		case source_tld = "source_tld"
		case source_post_url = "source_post_url"
		case is_sticker = "is_sticker"
		case import_datetime = "import_datetime"
		case trending_datetime = "trending_datetime"
		case user = "user"
		case images = "images"
		case title = "title"
		case _score = "_score"
		case analytics = "analytics"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		bitly_gif_url = try values.decodeIfPresent(String.self, forKey: .bitly_gif_url)
		bitly_url = try values.decodeIfPresent(String.self, forKey: .bitly_url)
		embed_url = try values.decodeIfPresent(String.self, forKey: .embed_url)
		username = try values.decodeIfPresent(String.self, forKey: .username)
		source = try values.decodeIfPresent(String.self, forKey: .source)
		rating = try values.decodeIfPresent(String.self, forKey: .rating)
		content_url = try values.decodeIfPresent(String.self, forKey: .content_url)
		source_tld = try values.decodeIfPresent(String.self, forKey: .source_tld)
		source_post_url = try values.decodeIfPresent(String.self, forKey: .source_post_url)
		is_sticker = try values.decodeIfPresent(Int.self, forKey: .is_sticker)
		import_datetime = try values.decodeIfPresent(String.self, forKey: .import_datetime)
		trending_datetime = try values.decodeIfPresent(String.self, forKey: .trending_datetime)
		user = try values.decodeIfPresent(User.self, forKey: .user)
		images = try values.decodeIfPresent(Images.self, forKey: .images)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		_score = try values.decodeIfPresent(Int.self, forKey: ._score)
		analytics = try values.decodeIfPresent(Analytics.self, forKey: .analytics)
	}

}
