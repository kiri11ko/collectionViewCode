

import Foundation
struct Fixed_height_downsampled : Codable {
	let url : String?
	let width : String?
	let height : String?
	let size : String?
	let webp : String?
	let webp_size : String?

	enum CodingKeys: String, CodingKey {

		case url = "url"
		case width = "width"
		case height = "height"
		case size = "size"
		case webp = "webp"
		case webp_size = "webp_size"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		width = try values.decodeIfPresent(String.self, forKey: .width)
		height = try values.decodeIfPresent(String.self, forKey: .height)
		size = try values.decodeIfPresent(String.self, forKey: .size)
		webp = try values.decodeIfPresent(String.self, forKey: .webp)
		webp_size = try values.decodeIfPresent(String.self, forKey: .webp_size)
	}

}
