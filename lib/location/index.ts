export class Location {
	toggleTabLocation() {
		$('.location-list .tab-nav .item').each(function () {
			if ($(this).hasClass('active') == true) {
				let firstTarget = $(this).attr('data-target')
				$('.location-list .tab-content .location').not(firstTarget).hide().removeClass('show')
			}
			// $(this).on('click', function () {
			// 	let target = $(this).attr('data-target')
			// 	$(target).fadeIn(500).addClass('show')
			// 	$(target).siblings('.location').hide().removeClass('show')
			// 	$(this).addClass('active')
			// 	$('.location-list .tab-nav .item').not(this).removeClass('active')
			// })
		})
	}
}