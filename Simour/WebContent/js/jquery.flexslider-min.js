/*
 * jQuery FlexSlider v1.4
 * http://flex.madebymufffin.com
 *
 * Copyright 2011, Tyler Smith
 * Free to use under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 *
 * TouchWipe gesture credits: http://www.netcu.de/jquery-touchwipe-iphone-ipad-library
 */
(function(a) {
	a.fn
			.extend({
				flexslider : function(q) {
					var k = {
						animation : "fade",
						slideshow : true,
						slideshowSpeed : 7000,
						animationDuration : 500,
						directionNav : true,
						controlNav : true,
						keyboardNav : true,
						touchSwipe : true,
						prevText : "Previous",
						nextText : "Next",
						randomize : false,
						slideToStart : 0,
						pauseOnAction : true,
						pauseOnHover : false,
						controlsContainer : "",
						manualControls : ""
					};
					var q = a.extend(k, q), d = this, c = a(".slides", d), b = a(
							".slides li", d), f = b.length;
					ANIMATING = false, currentSlide = q.slideToStart;
					if (q.randomize && f > 1) {
						b.sort(function() {
							return (Math.round(Math.random()) - 0.5)
						});
						c.empty().append(b)
					}
					if (q.animation.toLowerCase() == "slide" && f > 1) {
						d.css({
							overflow : "hidden"
						});
						c.append(b.filter(":first").clone().addClass("clone"))
								.prepend(
										b.filter(":last").clone().addClass(
												"clone"));
						c.width(((f + 2) * d.width()) + 2000);
						var g = a(".slides li", d);
						setTimeout(function() {
							g.width(d.width()).css({
								"float" : "left"
							}).show()
						}, 100);
						c.css({
							marginLeft : (-1 * (currentSlide + 1)) * d.width()
									+ "px"
						})
					} else {
						b.hide().eq(currentSlide).fadeIn(400)
					}
					function o(i) {
						if (!ANIMATING) {
							ANIMATING = true;
							if (q.animation.toLowerCase() == "slide") {
								if (currentSlide == 0 && i == f - 1) {
									c.animate({
										marginLeft : "0px"
									}, q.animationDuration, function() {
										c.css({
											marginLeft : (-1 * f)
													* b.filter(":first")
															.width() + "px"
										});
										ANIMATING = false;
										currentSlide = i
									})
								} else {
									if (currentSlide == f - 1 && i == 0) {
										c.animate({
											marginLeft : (-1 * (f + 1))
													* b.filter(":first")
															.width() + "px"
										}, q.animationDuration, function() {
											c.css({
												marginLeft : -1
														* b.filter(":first")
																.width() + "px"
											});
											ANIMATING = false;
											currentSlide = i
										})
									} else {
										c.animate({
											marginLeft : (-1 * (i + 1))
													* b.filter(":first")
															.width() + "px"
										}, q.animationDuration, function() {
											ANIMATING = false;
											currentSlide = i
										})
									}
								}
							} else {
								if (q.animation.toLowerCase() == "show") {
									b.eq(currentSlide).hide();
									b.eq(i).show();
									ANIMATING = false;
									currentSlide = i
								} else {
									d.css({
										minHeight : b.eq(currentSlide).height()
									});
									b.eq(currentSlide).fadeOut(
											q.animationDuration,
											function() {
												b.eq(i).fadeIn(
														q.animationDuration,
														function() {
															ANIMATING = false;
															currentSlide = i
														});
												d.css({
													minHeight : "inherit"
												})
											})
								}
							}
						}
					}
					if (q.controlNav && f > 1) {
						if (q.manualControls != ""
								&& a(q.manualControls).length > 0) {
							var e = a(q.manualControls)
						} else {
							var e = a('<ol class="flex-control-nav"></ol>');
							var l = 1;
							for (var m = 0; m < f; m++) {
								e.append("<li><a>" + l + "</a></li>");
								l++
							}
							if (q.controlsContainer != ""
									&& a(q.controlsContainer).length > 0) {
								a(q.controlsContainer).append(e)
							} else {
								d.append(e)
							}
							e = a(".flex-control-nav li a")
						}
						e.eq(currentSlide).addClass("active");
						e.click(function(j) {
							j.preventDefault();
							if (a(this).hasClass("active") || ANIMATING) {
								return
							} else {
								e.removeClass("active");
								a(this).addClass("active");
								var i = e.index(a(this));
								o(i);
								if (q.pauseOnAction) {
									clearInterval(n)
								}
							}
						})
					}
					if (q.directionNav && f > 1) {
						if (q.controlsContainer != ""
								&& a(q.controlsContainer).length > 0) {
							a(q.controlsContainer)
									.append(
											a('<ul class="flex-direction-nav"><li><a class="prev" href="#">'
													+ q.prevText
													+ '</a></li><li><a class="next" href="#">'
													+ q.nextText
													+ "</a></li></ul>"))
						} else {
							d
									.append(a('<ul class="flex-direction-nav"><li><a class="prev" href="#">'
											+ q.prevText
											+ '</a></li><li><a class="next" href="#">'
											+ q.nextText + "</a></li></ul>"))
						}
						a(".flex-direction-nav li a").click(
								function(i) {
									i.preventDefault();
									if (ANIMATING) {
										return
									} else {
										if (a(this).hasClass("next")) {
											var j = (currentSlide == f - 1) ? 0
													: currentSlide + 1
										} else {
											var j = (currentSlide == 0) ? f - 1
													: currentSlide - 1
										}
										if (q.controlNav) {
											e.removeClass("active");
											e.eq(j).addClass("active")
										}
										o(j);
										if (q.pauseOnAction) {
											clearInterval(n)
										}
									}
								})
					}
					if (q.keyboardNav && f > 1) {
						a(document)
								.keyup(
										function(i) {
											if (ANIMATING) {
												return
											} else {
												if (i.keyCode != 39
														&& i.keyCode != 37) {
													return
												} else {
													if (i.keyCode == 39) {
														var j = (currentSlide == f - 1) ? 0
																: currentSlide + 1
													} else {
														if (i.keyCode == 37) {
															var j = (currentSlide == 0) ? f - 1
																	: currentSlide - 1
														}
													}
													if (q.controlNav) {
														e.removeClass("active");
														e.eq(j).addClass(
																"active")
													}
													o(j);
													if (q.pauseOnAction) {
														clearInterval(n)
													}
												}
											}
										})
					}
					if (q.slideshow && f > 1) {
						var n;
						function p() {
							if (ANIMATING) {
								return
							} else {
								var i = (currentSlide == f - 1) ? 0
										: currentSlide + 1;
								if (q.controlNav) {
									e.removeClass("active");
									e.eq(i).addClass("active")
								}
								o(i)
							}
						}
						if (q.pauseOnHover) {
							d.hover(function() {
								clearInterval(n)
							}, function() {
								n = setInterval(p, q.slideshowSpeed)
							})
						}
						if (f > 1) {
							n = setInterval(p, q.slideshowSpeed)
						}
					}
					if (q.touchSwipe
							&& "ontouchstart" in document.documentElement
							&& f > 1) {
						d.each(function() {
							var i, j = 20;
							isMoving = false;
							function t() {
								this.removeEventListener("touchmove", r);
								i = null;
								isMoving = false
							}
							function r(y) {
								if (isMoving) {
									var u = y.touches[0].pageX, v = i - u;
									if (Math.abs(v) >= j) {
										t();
										if (v > 0) {
											var w = (currentSlide == f - 1) ? 0
													: currentSlide + 1
										} else {
											var w = (currentSlide == 0) ? f - 1
													: currentSlide - 1
										}
										if (q.controlNav) {
											e.removeClass("active");
											e.eq(w).addClass("active")
										}
										o(w);
										if (q.pauseOnAction) {
											clearInterval(n)
										}
									}
								}
							}
							function s(u) {
								if (u.touches.length == 1) {
									i = u.touches[0].pageX;
									isMoving = true;
									this
											.addEventListener("touchmove", r,
													false)
								}
							}
							if ("ontouchstart" in document.documentElement) {
								this.addEventListener("touchstart", s, false)
							}
						})
					}
					if (q.animation.toLowerCase() == "slide" && f > 1) {
						var h;
						a(window).resize(function() {
							g.width(d.width());
							c.width(((f + 2) * d.width()) + 2000);
							clearTimeout(h);
							h = setTimeout(function() {
								o(currentSlide)
							}, 300)
						})
					}
				}
			})
})(jQuery);