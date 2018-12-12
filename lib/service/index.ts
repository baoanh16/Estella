export class Service {
	serviceList() {
		let serviceList = new Swiper('.service-list .swiper-container', {
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
					spaceBetween: 0,
				},
				768: {
					slidesPerView: 2,
					spaceBetween: 40,
				},
				992: {
					slidesPerView: 3,
					spaceBetween: 30,
				}
			}
		})
	}
}