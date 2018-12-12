export class Header {
	toggleLang() {
		$('.vhs-header .language').click(function () {
			$(this).find('ul').slideToggle(200);
		})
	};
	toggleSearchBar() {
		if (window.outerWidth >= 992) {
			$('.vhs-header .search span').on('click', function () {
				$(this).siblings('.Module').toggleClass('active')
			})
		}
	}
	moveSearchBar() {
		let language = new MappingListener({
			selector: ".search",
			mobileWrapper: ".main-nav",
			mobileMethod: "appendTo",
			desktopWrapper: ".language",
			desktopMethod: "insertAfter",
			breakpoint: 'lg',
		}).watch();
	}
	toggleMenuMobile() {
		$('.vhs-header .menu-toggle').on('click', function (e) {
			e.preventDefault()
			$('.vhs-header .main-nav').toggleClass('active')
			$('.vhs-header .backdrop').fadeToggle(200)
		})
	}
	backdrop() {
		$('.backdrop').on('click', function () {
			$('.vhs-header .main-nav').removeClass('active')
			$(this).fadeOut(200)
		})
	}
	addBackdrop(x: any) {
		let backdrop = '<div class="backdrop"></div>'
		if (x.matches) {
			$('header').append(backdrop)
		}
		else {
			$('.backdrop').remove()
		}
	}
}