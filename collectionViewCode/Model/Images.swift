/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Images : Codable {
	let fixed_height_still : Fixed_height_still?
	let original_still : Original_still?
	let fixed_width : Fixed_width?
	let fixed_height_small_still : Fixed_height_small_still?
	let fixed_height_downsampled : Fixed_height_downsampled?
	let preview : Preview?
	let fixed_height_small : Fixed_height_small?
	let downsized_still : Downsized_still?
	let downsized : Downsized?
	let downsized_large : Downsized_large?
	let fixed_width_small_still : Fixed_width_small_still?
	let preview_webp : Preview_webp?
	let fixed_width_still : Fixed_width_still?
	let fixed_width_small : Fixed_width_small?
	let downsized_small : Downsized_small?
	let fixed_width_downsampled : Fixed_width_downsampled?
	let downsized_medium : Downsized_medium?
	let original : Original?
	let fixed_height : Fixed_height?
	let looping : Looping?
	let original_mp4 : Original_mp4?
	let preview_gif : Preview_gif?
//    let w_still : _480w_still?

	enum CodingKeys: String, CodingKey {

		case fixed_height_still = "fixed_height_still"
		case original_still = "original_still"
		case fixed_width = "fixed_width"
		case fixed_height_small_still = "fixed_height_small_still"
		case fixed_height_downsampled = "fixed_height_downsampled"
		case preview = "preview"
		case fixed_height_small = "fixed_height_small"
		case downsized_still = "downsized_still"
		case downsized = "downsized"
		case downsized_large = "downsized_large"
		case fixed_width_small_still = "fixed_width_small_still"
		case preview_webp = "preview_webp"
		case fixed_width_still = "fixed_width_still"
		case fixed_width_small = "fixed_width_small"
		case downsized_small = "downsized_small"
		case fixed_width_downsampled = "fixed_width_downsampled"
		case downsized_medium = "downsized_medium"
		case original = "original"
		case fixed_height = "fixed_height"
		case looping = "looping"
		case original_mp4 = "original_mp4"
		case preview_gif = "preview_gif"
//        case w_still = "480w_still"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		fixed_height_still = try values.decodeIfPresent(Fixed_height_still.self, forKey: .fixed_height_still)
		original_still = try values.decodeIfPresent(Original_still.self, forKey: .original_still)
		fixed_width = try values.decodeIfPresent(Fixed_width.self, forKey: .fixed_width)
		fixed_height_small_still = try values.decodeIfPresent(Fixed_height_small_still.self, forKey: .fixed_height_small_still)
		fixed_height_downsampled = try values.decodeIfPresent(Fixed_height_downsampled.self, forKey: .fixed_height_downsampled)
		preview = try values.decodeIfPresent(Preview.self, forKey: .preview)
		fixed_height_small = try values.decodeIfPresent(Fixed_height_small.self, forKey: .fixed_height_small)
		downsized_still = try values.decodeIfPresent(Downsized_still.self, forKey: .downsized_still)
		downsized = try values.decodeIfPresent(Downsized.self, forKey: .downsized)
		downsized_large = try values.decodeIfPresent(Downsized_large.self, forKey: .downsized_large)
		fixed_width_small_still = try values.decodeIfPresent(Fixed_width_small_still.self, forKey: .fixed_width_small_still)
		preview_webp = try values.decodeIfPresent(Preview_webp.self, forKey: .preview_webp)
		fixed_width_still = try values.decodeIfPresent(Fixed_width_still.self, forKey: .fixed_width_still)
		fixed_width_small = try values.decodeIfPresent(Fixed_width_small.self, forKey: .fixed_width_small)
		downsized_small = try values.decodeIfPresent(Downsized_small.self, forKey: .downsized_small)
		fixed_width_downsampled = try values.decodeIfPresent(Fixed_width_downsampled.self, forKey: .fixed_width_downsampled)
		downsized_medium = try values.decodeIfPresent(Downsized_medium.self, forKey: .downsized_medium)
		original = try values.decodeIfPresent(Original.self, forKey: .original)
		fixed_height = try values.decodeIfPresent(Fixed_height.self, forKey: .fixed_height)
		looping = try values.decodeIfPresent(Looping.self, forKey: .looping)
		original_mp4 = try values.decodeIfPresent(Original_mp4.self, forKey: .original_mp4)
		preview_gif = try values.decodeIfPresent(Preview_gif.self, forKey: .preview_gif)
//        w_still = try values.decodeIfPresent(_480w_still.self,  forKey: .w_still)
	}

}
