export class Home {
	homeBanner() {
		let homeBanner = new Swiper('.home-1 .swiper-container', {
			speed: 750,
			simulateTouch: true,
			loop: true,
			disableOnInteraction: false,
			autoplay: {
				delay: 4000,
			},
			slidesPerView: 1,
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		})
	}
	homeBannerButtonDown() {
		$('.home-1 .button-next-section').on('click', function () {
			$('html, body').animate({
				scrollTop: $('.home-2').offset().top - $('header').outerHeight()
			}, 750)
		})
	}

	homePersonalImageSlider() {
		let homePersonalImageSlider = new Swiper('.home-3 .personal-page-box .swiper-container', {
			speed: 750,
			slidesPerView: 2.5,
			loop: true,
			spaceBetween: 10
		})
	}
}