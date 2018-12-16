export class Store {
	toggleFilter() {
		$('.store-category .category-filter .dropdown .title').on('click', function () {
			$(this).siblings('.content').slideToggle()
		})
	}
	toggleTab() {
		$('.store-level .tab-nav li a').each(function () {
			if ($(this).parent().hasClass('active') == true) {
				let firstTarget = $(this).attr('data-target')
				$(firstTarget).siblings('.sl-tab').hide().removeClass('show')
			}
			$(this).on('click', function () {
				let target = $(this).attr('data-target')
				$(target).fadeIn(500).addClass('show')
				$(target).siblings('.sl-tab').hide().removeClass('show')
				$(this).parent().addClass('active')
				$(this).parent().siblings().removeClass('active')
			})

		})
	}

	storeDetailEvent() {
		let storeDetailEvent = new Swiper('.store-detail-event .swiper-container', {
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
	// ON RAP

	StoreDetailMoveModule() {
		let test = document.querySelector('.store-detail-event')
		if (test != null) {
			let StoreDetailMoveModule = new MappingListener({
				selector: ".store-detail-event",
				mobileWrapper: ".store-brand",
				mobileMethod: "insertAfter",
				desktopWrapper: ".store-brand",
				desktopMethod: "insertAfter",
				breakpoint: 'lg',
			}).watch();
		}
	}

	activeStoreFilter() {
		$('body').on('click', '.ajaxfilterresponse .ajaxlink', function () {
			$(this).parent().addClass('active')
			$(this).parent().siblings().removeClass('active')
			$('.store-category .category-filter .dropdown .content').hide()
		})
	}
}