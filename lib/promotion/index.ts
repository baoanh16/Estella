export class Promotion {
	promotionOther() {
		let promotionOther = new Swiper('.promotion-other .swiper-container', {
			speed: 700,
			spaceBetween: 30,
			loop: true,
			slidesPerView: 3,
			autoplay: {
				delay: 4000,
			},
			breakpoints: {
				480: {
					slidesPerView: 1,
				},
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				}
			}
		})
	}
	promotionFixedImg() {
		$('.promotion-list .item img').outerHeight($('.promotion-list .item').outerWidth())
	}
}