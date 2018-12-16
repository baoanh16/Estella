// Import typescript files from lib
import { Header } from '../../lib/header/index';
import { Home } from '../../lib/home/index';
import { Store } from '../../lib/store/index';
import { Promotion } from '../../lib/promotion/index';
import { Service } from '../../lib/service/index';
import { Location } from '../../lib/location/index';
let header = new Header()
let home = new Home()
let store = new Store()
let promotion = new Promotion()
let service = new Service()
let location = new Location()


$(window).on('scroll', function () {
	if ($(window).scrollTop() >= 700) {
		$('#goTopButton').fadeIn(400).addClass('active')
	} else {
		$('#goTopButton').fadeOut(400).removeClass('active')
	}
})


$(document).ready(function () {
	// GoToTopButton
	$('#goTopButton').on('click', function () {
		$('html,body').animate({
			scrollTop: 0
		}, 700)
	})
	// Page Banner
	let pageBanner = new Swiper('.page-banner .Module-151 .swiper-container', {
		speed: 750,
	})
	// HEADER 
	var bp = window.matchMedia("(max-width: 992px)")
	header.addBackdrop(bp);
	bp.addListener(header.addBackdrop);
	header.backdrop();
	header.toggleLang();
	header.toggleSearchBar();
	header.moveSearchBar();
	header.toggleMenuMobile();
	// Index
	home.homeBanner();
	home.homeBannerButtonDown();
	home.homePersonalImageSlider();
	// Store
	store.toggleFilter();
	store.toggleTab();
	store.storeDetailEvent();
	store.StoreDetailMoveModule();
	store.activeStoreFilter();
	// Promotion
	promotion.promotionOther();
	// Service
	service.serviceList();
	// Location
	location.toggleTabLocation();
})
