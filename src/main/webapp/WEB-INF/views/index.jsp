<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<!--  부트스트랩-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
    <!--  부트스트랩-->
    <!-- input.css  -->
    
    <!-- 스타일 -->
    <style>
    @charset "UTF-8";


.input {
	position: relative;
	z-index: 1;
	display: inline-block;
	margin: 1em;
	max-width: 400px;
	width: calc(100% - 2em);
	vertical-align: top;
}

.input__field {
	position: relative;
	display: block;
	float: right;
	padding: 0.8em;
	width: 60%;
	border: none;
	border-radius: 0;
	background: #f0f0f0;
	color: #aaa;
	font-weight: bold;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	-webkit-appearance: none; /* for box shadows to show on iOS */
}

.input__field:focus {
	outline: none;
}

.input__label {
	display: inline-block;
	float: right;
	padding: 0 1em;
	width: 40%;
	color: #6a7989;
	font-weight: bold;
	font-size: 70.25%;
	-webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.input__label-content {
	position: relative;
	display: block;
	padding: 1.6em 0;
	width: 100%;
}

.graphic {
	position: absolute;
	top: 0;
	left: 0;
	fill: none;
}

.icon {
	color: #ddd;
	font-size: 150%;
}

/* Individual styles */

/* Haruki */

.input--haruki {
	margin: 4em 1em 1em;
}

.input__field--haruki {
	padding: 0.4em 0.25em;
	width: 100%;
	background: transparent;
	color: #AFB5BB;
	font-size: 1.55em;
}

.input__label--haruki {
	position: absolute;
	width: 100%;
	text-align: left;
	pointer-events: none;
}

.input__label-content--haruki {
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--haruki::before,
.input__label--haruki::after {
	content: '';
	position: absolute;
	left: 0;
	z-index: -1;
	width: 100%;
	height: 4px;
	background: #6a7989;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--haruki::before {
	top: 0;
}

.input__label--haruki::after {
	bottom: 0;
}

.input__field--haruki:focus + .input__label--haruki .input__label-content--haruki,
.input--filled .input__label-content--haruki {
	-webkit-transform: translate3d(0, -90%, 0);
	transform: translate3d(0, -90%, 0);
}

.input__field--haruki:focus + .input__label--haruki::before,
.input--filled .input__label--haruki::before {
	-webkit-transform: translate3d(0, -0.5em, 0);
	transform: translate3d(0, -0.5em, 0);
}

.input__field--haruki:focus + .input__label--haruki::after,
.input--filled .input__label--haruki::after {
	-webkit-transform: translate3d(0, 0.5em, 0);
	transform: translate3d(0, 0.5em, 0);
}

/* Hoshi */
.input--hoshi {
	overflow: hidden;
}

.input__field--hoshi {
	margin-top: 1em;
	padding: 0.85em 0.15em;
	width: 100%;
	background: transparent;
	color: #595F6E;
}

.input__label--hoshi {
	position: absolute;
	bottom: 0;
	left: 0;
	padding: 0 0.25em;
	width: 100%;
	height: calc(100% - 1em);
	text-align: left;
	pointer-events: none;
}

.input__label-content--hoshi {
	position: absolute;
}

.input__label--hoshi::before,
.input__label--hoshi::after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: calc(100% - 10px);
	border-bottom: 1px solid #B9C1CA;
}

.input__label--hoshi::after {
	margin-top: 2px;
	border-bottom: 4px solid red;
	-webkit-transform: translate3d(-100%, 0, 0);
	transform: translate3d(-100%, 0, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--hoshi-color-1::after {
	border-color: hsl(200, 100%, 50%);
}

.input__label--hoshi-color-2::after {
	border-color: hsl(160, 100%, 50%);
}

.input__label--hoshi-color-3::after {
	border-color: hsl(20, 100%, 50%);
}

.input__field--hoshi:focus + .input__label--hoshi::after,
.input--filled .input__label--hoshi::after {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--hoshi:focus + .input__label--hoshi .input__label-content--hoshi,
.input--filled .input__label-content--hoshi {
	-webkit-animation: anim-1 0.3s forwards;
	animation: anim-1 0.3s forwards;
}

@-webkit-keyframes anim-1 {
	50% {
		opacity: 0;
		-webkit-transform: translate3d(1em, 0, 0);
		transform: translate3d(1em, 0, 0);
	}
	51% {
		opacity: 0;
		-webkit-transform: translate3d(-1em, -40%, 0);
		transform: translate3d(-1em, -40%, 0);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, -40%, 0);
		transform: translate3d(0, -40%, 0);
	}
}

@keyframes anim-1 {
	50% {
		opacity: 0;
		-webkit-transform: translate3d(1em, 0, 0);
		transform: translate3d(1em, 0, 0);
	}
	51% {
		opacity: 0;
		-webkit-transform: translate3d(-1em, -40%, 0);
		transform: translate3d(-1em, -40%, 0);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, -40%, 0);
		transform: translate3d(0, -40%, 0);
	}
}

/* Kuro */
.input--kuro {
	max-width: 320px;
	margin-bottom: 3em;
}

.input__field--kuro {
	width: 100%;
	background: transparent;
	color: #9196A1;
	opacity: 0;
	text-align: center;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
}

.input__label--kuro {
	position: absolute;
	left: 0;
	width: 100%;
	color: #df6589;
	pointer-events: none;
}

.input__label--kuro::before,
.input__label--kuro::after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 50%;
	height: 100%;
	border: 4px solid #747981;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--kuro::before {
	border-right: none;
}

.input__label--kuro::after {
	left: 50%;
	border-left: none;
}

.input__field--kuro:focus,
.input--filled .input__field--kuro {
	opacity: 1;
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.input__field--kuro:focus + .input__label--kuro::before,
.input--filled .input__label--kuro::before {
	-webkit-transform: translate3d(-10%, 0, 0);
	transform: translate3d(-10%, 0, 0);
}

.input__field--kuro:focus + .input__label--kuro::after,
.input--filled .input__label--kuro::after {
	-webkit-transform: translate3d(10%, 0, 0);
	transform: translate3d(10%, 0, 0);
}

.input__field--kuro:focus + .input__label--kuro .input__label-content--kuro,
.input--filled .input__label-content--kuro {
	-webkit-animation: anim-2 0.3s forwards;
	animation: anim-2 0.3s forwards;
}

@-webkit-keyframes anim-2 {
	50% {
		opacity: 0;
		-webkit-transform: scale3d(0.3, 0.3, 1);
		transform: scale3d(0.3, 0.3, 1);
	}
	51% {
		opacity: 0;
		-webkit-transform: translate3d(0, 3.7em, 0) scale3d(0.3, 0.3, 1);
		transform: translate3d(0, 3.7em, 0) scale3d(0.3, 0.3, 1);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, 3.7em, 0);
		transform: translate3d(0, 3.7em, 0);
	}
}

@keyframes anim-2 {
	50% {
		opacity: 0;
		-webkit-transform: scale3d(0.3, 0.3, 1);
		transform: scale3d(0.3, 0.3, 1);
	}
	51% {
		opacity: 0;
		-webkit-transform: translate3d(0, 3.7em, 0) scale3d(0.3, 0.3, 1);
		transform: translate3d(0, 3.7em, 0) scale3d(0.3, 0.3, 1);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, 3.7em, 0);
		transform: translate3d(0, 3.7em, 0);
	}
}

/* Jiro */
.input--jiro {
	margin-top: 2em;
}

.input__field--jiro {
	padding: 0.85em 0.5em;
	width: 100%;
	background: transparent;
	color: #DDE2E2;
	opacity: 0;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
}

.input__label--jiro {
	position: absolute;
	left: 0;
	padding: 0 0.85em;
	width: 100%;
	height: 100%;
	text-align: left;
	pointer-events: none;
}

.input__label-content--jiro {
	-webkit-transition: -webkit-transform 0.3s 0.3s;
	transition: transform 0.3s 0.3s;
}

.input__label--jiro::before,
.input__label--jiro::after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--jiro::before {
	border-top: 2px solid #6a7989;
	-webkit-transform: translate3d(0, 100%, 0) translate3d(0, -2px, 0);
	transform: translate3d(0, 100%, 0) translate3d(0, -2px, 0);
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.input__label--jiro::after {
	z-index: -1;
	background: #6a7989;
	-webkit-transform: scale3d(1, 0, 1);
	transform: scale3d(1, 0, 1);
	-webkit-transform-origin: 50% 0%;
	transform-origin: 50% 0%;
}

.input__field--jiro:focus,
.input--filled .input__field--jiro {
	opacity: 1;
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.input__field--jiro:focus + .input__label--jiro .input__label-content--jiro,
.input--filled .input__label-content--jiro {
	-webkit-transform: translate3d(0, -80%, 0);
	transform: translate3d(0, -80%, 0);
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.input__field--jiro:focus + .input__label--jiro::before,
.input--filled .input__label--jiro::before {
	-webkit-transition-delay: 0s;
	transition-delay: 0s;
}

.input__field--jiro:focus + .input__label--jiro::before,
.input--filled .input__label--jiro::before {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--jiro:focus + .input__label--jiro::after,
.input--filled .input__label--jiro::after {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

/* Minoru */
.input__field--minoru {
	width: 100%;
	background: #fff;
	box-shadow: 0px 0px 0px 2px transparent;
	color: #eca29b;
	-webkit-transition: box-shadow 0.3s;
	transition: box-shadow 0.3s;
}

.input__label--minoru {
	padding: 0;
	width: 100%;
	text-align: left;
}

.input__label--minoru::after {
	content: '';
  	position: absolute;
  	top: 0;
  	z-index: -1;
  	width: 100%;
  	height: 4em;
	box-shadow: 0px 0px 0px 0px;
	color: rgba(199,152,157, 0.6);
}

.input__field--minoru:focus {
	box-shadow: 0px 0px 0px 2px #eca29b;
}

.input__field--minoru:focus + .input__label--minoru {
	pointer-events: none;
}

.input__field--minoru:focus + .input__label--minoru::after {
	-webkit-animation: anim-shadow 0.3s forwards;
	animation: anim-shadow 0.3s forwards;
}

@-webkit-keyframes anim-shadow {
	to {
		box-shadow: 0px 0px 100px 50px;
    	opacity: 0;
	}
}

@keyframes anim-shadow {
	to {
		box-shadow: 0px 0px 100px 50px;
    	opacity: 0;
	}
}

.input__label-content--minoru {
	padding: 0.75em 0.15em;
}

/* Yoko */
.input__field--yoko {
	z-index: 10;
	width: 100%;
	background: transparent;
	color: #f5f5f5;
	opacity: 0;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
}

.input__label--yoko {
	position: relative;
	width: 100%;
	color: #b04b40;
	text-align: left;
}

.input__label--yoko::before {
	content: '';
	position: absolute;
	bottom: 100%;
	left: 0;
	width: 100%;
	height: 4em;
	background: #c5564a;
	-webkit-transform: perspective(1000px) rotate3d(1, 0, 0, 90deg);
	transform: perspective(1000px) rotate3d(1, 0, 0, 90deg);
	-webkit-transform-origin: 50% 100%;
	transform-origin: 50% 100%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--yoko::after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 0.25em;
	background: #ad473c;
	-webkit-transform-origin: 50% 0%;
	transform-origin: 50% 0%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--yoko {
	padding: 0.75em 0;
}

.input__field--yoko:focus,
.input--filled .input__field--yoko {
	opacity: 1;
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.input__field--yoko:focus + .input__label--yoko::before,
.input--filled .input__label--yoko::before {
	-webkit-transform: perspective(1000px) rotate3d(1, 0, 0, 0deg);
	transform: perspective(1000px) rotate3d(1, 0, 0, 0deg);
}

.input__field--yoko:focus + .input__label--yoko,
.input--filled .input__label--yoko {
	pointer-events: none;
}

.input__field--yoko:focus + .input__label--yoko::after,
.input--filled .input__label--yoko::after {
	-webkit-transform: perspective(1000px) rotate3d(1, 0, 0, -90deg);
	transform: perspective(1000px) rotate3d(1, 0, 0, -90deg);
}

/* Kyo */
.input--kyo {
	z-index: auto;
}

.input__field--kyo {
	padding: 0.85em 1.5em;
	width: 100%;
	border-radius: 2em;
	background: #fff;
	color: #535d92;
}

.input__label--kyo {
	z-index: 0;
	padding: 0 0 0 2em;
	width: 100%;
	text-align: left;
}

.input__label--kyo::after {
	content: '';
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1000;
	width: 100%;
	height: 100%;
	background: rgba(11, 43, 205, 0.6);
	opacity: 0;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
	pointer-events: none;
}

.input__label-content--kyo {
	padding: 0.5em 0;
}

.input__field--kyo:focus,
.input__field--kyo:focus +  .input__label--kyo .input__label-content--kyo {
	z-index: 10000;
}

.input__field--kyo:focus + .input__label--kyo {
	color: #fff;
}

.input__field--kyo:focus + .input__label--kyo::after {
	opacity: 1;
}

/* Akira */
.input--akira {
	margin-top: 2em;
}

.input__field--akira {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
	display: block;
	padding: 0 1em;
	width: 100%;
	height: 100%;
	background: transparent;
	text-align: center;
}

.input__label--akira {
	padding: 0;
	width: 100%;
	background: #696a6e;
	color: #cc6055;
	cursor: text;
}

.input__label--akira::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #2f3238;
	-webkit-transform: scale3d(0.97, 0.85, 1);
	transform: scale3d(0.97, 0.85, 1);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--akira {
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__field--akira:focus + .input__label--akira::before,
.input--filled .input__label--akira::before {
	-webkit-transform: scale3d(0.99, 0.95, 1);
	transform: scale3d(0.99, 0.95, 1);
}

.input__field--akira:focus + .input__label--akira,
.input--filled .input__label--akira {
	cursor: default;
	pointer-events: none;
}

.input__field--akira:focus + .input__label--akira .input__label-content--akira,
.input--filled .input__label-content--akira {
	-webkit-transform: translate3d(0, -3.5em, 0);
	transform: translate3d(0, -3.5em, 0);
}

/* Ichiro */
.input--ichiro {
	margin-top: 2em;
}

.input__field--ichiro {
	position: absolute;
	top: 4px;
	left: 4px;
	z-index: 100;
	display: block;
	padding: 0 0.55em;
	width: calc(100% - 8px);
	height: calc(100% - 8px);
	background: #f0f0f0;
	color: #7F8994;
	opacity: 0;
	-webkit-transform: scale3d(1, 0, 1);
	transform: scale3d(1, 0, 1);
	-webkit-transform-origin: 50% 100%;
	transform-origin: 50% 100%;
	-webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
	transition: opacity 0.3s, transform 0.3s;
}

.input__label--ichiro {
	width: 100%;
	text-align: left;
	cursor: text;
}

.input__label--ichiro::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	-webkit-transform-origin: 50% 100%;
	transform-origin: 50% 100%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--ichiro {
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__field--ichiro:focus,
.input--filled .input__field--ichiro {
	opacity: 1;
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

.input__field--ichiro:focus + .input__label--ichiro,
.input--filled .input__label--ichiro {
	cursor: default;
	pointer-events: none;
}

.input__field--ichiro:focus + .input__label--ichiro::before,
.input--filled .input__label--ichiro::before {
	-webkit-transform: scale3d(1, 1.5, 1);
	transform: scale3d(1, 1.5, 1);
}

.input__field--ichiro:focus + .input__label--ichiro .input__label-content--ichiro,
.input--filled .input__label-content--ichiro {
	-webkit-transform: translate3d(0, -3.15em, 0) scale3d(0.8, 0.8, 1);
	transform: translate3d(0, -3.15em, 0) scale3d(0.8, 0.8, 1) translateZ(1px);
}

/* Juro */
.input--juro {
	overflow: hidden;
}

.input__field--juro {
	position: absolute;
	z-index: 100;
	padding: 2.15em 0.75em 0;
	width: 100%;
	background: transparent;
	color: #1784cd;
	font-size: 0.85em;
}

.input__label--juro {
	padding: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	text-align: left;
}

.input__label-content--juro {
	padding: 2em 1em;
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.3s, color 0.3s;
	transition: transform 0.3s, color 0.3s;

	text-rendering: geometricPrecision;
}

.input__label--juro::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 0px solid transparent;
	-webkit-transition: border-width 0.3s, border-color 0.3s;
	transition: border-width 0.3s, border-color 0.3s;
}

.input__field--juro:focus + .input__label--juro::before,
.input--filled .input__label--juro::before {
	border-width: 8px;
	border-color: #1784cd;
	border-top-width: 2em;
}

.input__field--juro:focus + .input__label--juro .input__label-content--juro,
.input--filled .input__label--juro .input__label-content--juro {
	color: #fff;
	-webkit-transform: translate3d(0, -1.5em, 0) scale3d(0.75, 0.75, 1);
	transform: translate3d(0, -1.5em, 0) scale3d(0.75, 0.75, 1) translateZ(1px);
}

/* Hideo */
.input--hideo {
	overflow: hidden;
	background: #fff;
}

.input__field--hideo {
	padding: 0.85em 0.85em 0.85em 3em;
	width: 100%;
	background: transparent;
	-webkit-transform: translate3d(1em, 0, 0);
	transform: translate3d(1em, 0, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--hideo {
	position: absolute;
	padding: 1.25em 0 0;
	width: 4em;
	height: 100%;
}

.input__label--hideo::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	width: 4em;
	height: 100%;
	background: #899dda;
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.icon--hideo {
	color: #fff;
	-webkit-transform: scale3d(1, 1, 1); /* Needed for Chrome bug */
	transform: scale3d(1, 1, 1);
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--hideo {
	position: absolute;
	top: 100%;
}

.input__field--hideo:focus {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--hideo:focus + .input__label--hideo::before {
	-webkit-transform: scale3d(0.8, 1, 1);
	transform: scale3d(0.8, 1, 1);
}

.input__field--hideo:focus + .input__label--hideo .icon--hideo {
	-webkit-transform: scale3d(0.6, 0.6, 1);
	transform: scale3d(0.6, 0.6, 1);
}

/* Madoka */
.input--madoka {
	margin: 1.1em;
}

.input__field--madoka {
	width: 100%;
	background: transparent;
	color: #7A7593;
}

.input__label--madoka {
	position: absolute;
	width: 100%;
	height: 100%;
	color: #7A7593;
	text-align: left;
	cursor: text;
}

.input__label-content--madoka {
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.graphic--madoka {
	-webkit-transform: scale3d(1, -1, 1);
	transform: scale3d(1, -1, 1);
	-webkit-transition: stroke-dashoffset 0.3s;
	transition: stroke-dashoffset 0.3s;
	pointer-events: none;

	stroke: #7A7593;
	stroke-width: 4px;
	stroke-dasharray: 962;
	stroke-dashoffset: 558;
}

.input__field--madoka:focus + .input__label--madoka,
.input--filled .input__label--madoka {
	cursor: default;
	pointer-events: none;
}

.input__field--madoka:focus + .input__label--madoka .graphic--madoka,
.input--filled .graphic--madoka {
	stroke-dashoffset: 0;
}

.input__field--madoka:focus + .input__label--madoka .input__label-content--madoka,
.input--filled .input__label-content--madoka {
	-webkit-transform: scale3d(0.81, 0.81, 1) translate3d(0, 4em, 0);
	transform: scale3d(0.81, 0.81, 1) translate3d(0, 4em, 0);
}

/* Kaede */
.input--kaede {
	display: block;
	overflow: hidden;
	margin: 1em auto 2em;
	background: #EFEEEE;
}

.input__field--kaede {
	position: absolute;
	top: 0;
	right: 100%;
	width: 60%;
	height: 100%;
	background: #fff;
	color: #9DABBA;
	-webkit-transition: -webkit-transform 0.5s;
	transition: transform 0.5s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.input__label--kaede {
	z-index: 10;
	display: block;
	width: 100%;
	height: 100%;
	text-align: left;
	cursor: text;
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
	-webkit-transition: -webkit-transform 0.5s;
	transition: transform 0.5s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.input__label-content--kaede {
	padding: 1.5em 0;
}

.input__field--kaede:focus,
.input--filled .input__field--kaede {
	-webkit-transform: translate3d(100%, 0, 0);
	transform: translate3d(100%, 0, 0);
	-webkit-transition-delay: 0.06s;
	transition-delay: 0.06s;
}

.input__field--kaede:focus + .input__label--kaede,
.input--filled .input__label--kaede  {
	-webkit-transform: translate3d(60%, 0, 0);
	transform: translate3d(60%, 0, 0);
	pointer-events: none;
}

@media screen and (max-width: 34em) {
	.input__field--kaede:focus + .input__label--kaede,
	.input--filled .input__label--kaede  {
		-webkit-transform: translate3d(65%, 0, 0) scale3d(0.65, 0.65, 1);
		transform: translate3d(65%, 0, 0) scale3d(0.65, 0.65, 1);
		pointer-events: none;
	}
}

/* Isao */
.input__field--isao {
	z-index: 10;
	padding: 0.75em 0.1em 0.25em;
	width: 100%;
	background: transparent;
	color: #afb3b8;
}

.input__label--isao {
	position: relative;
	overflow: hidden;
	padding: 0;
	width: 100%;
	color: #dadada;
	text-align: left;
}

.input__label--isao::before {
	content: '';
	position: absolute;
	top: 0;
	width: 100%;
	height: 7px;
	background: #dadada;
	-webkit-transform: scale3d(1, 0.4, 1);
	transform: scale3d(1, 0.4, 1);
	-webkit-transform-origin: 50% 100%;
	transform-origin: 50% 100%;
	-webkit-transition: -webkit-transform 0.3s, background-color 0.3s;
	transition: transform 0.3s, background-color 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.input__label--isao::after {
	content: attr(data-content);
	position: absolute;
	top: 0;
	left: 0;
	padding: 0.75em 0.15em;
	color: #da7071;
	opacity: 0;
	-webkit-transform: translate3d(0, 50%, 0);
	transform: translate3d(0, 50%, 0);
	-webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
	transition: opacity 0.3s, transform 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	pointer-events: none;
}

.input__field--isao:focus + .input__label--isao::before {
	background-color: #da7071;
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

.input__field--isao:focus + .input__label--isao {
	pointer-events: none;
}

.input__field--isao:focus + .input__label--isao::after {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__label-content--isao {
	padding: 0.75em 0.15em;
	-webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
	transition: opacity 0.3s, transform 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.input__field--isao:focus + .input__label--isao .input__label-content--isao {
	opacity: 0;
	-webkit-transform: translate3d(0, -50%, 0);
	transform: translate3d(0, -50%, 0);
}
/* Nao */
.input--nao {
	overflow: hidden;
	padding-top: 1em;
}

.input__field--nao {
	padding: 0.5em 0em 0.25em;
	width: 100%;
	background: transparent;
	color: #9da8b2;
	font-size: 1.25em;
}

.input__label--nao {
	position: absolute;
	top: 0.95em;
	font-size: 0.85em;
	left: 0;
	display: block;
	width: 100%;
	text-align: left;
	padding: 0em;
	pointer-events: none;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transition: -webkit-transform 0.3s 0.1s, color 1s;
	transition: transform 0.3s 0.1s, color 1s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
}

.graphic--nao {
	stroke: #92989e;
	pointer-events: none;
	-webkit-transition: -webkit-transform 0.7s, stroke 0.7s;
	transition: transform 0.7s, stroke 0.7s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
} 

.input__field--nao:focus + .input__label--nao,
.input--filled .input__label--nao {
	color: #333;
	-webkit-transform: translate3d(0, -1.25em, 0) scale3d(0.75, 0.75, 1);
	transform: translate3d(0, -1.25em, 0) scale3d(0.75, 0.75, 1);
}

.input__field--nao:focus ~ .graphic--nao,
.input--filled .graphic--nao {
	stroke: #333;
	-webkit-transform: translate3d(-66.6%, 0, 0);
	transform: translate3d(-66.6%, 0, 0);
}

/* Shoko */
.input--shoko {
	overflow: hidden;
	padding-bottom: 2.5em;
}

.input__field--shoko {
	padding: 0;
	margin-top: 1.2em;
	width: 100%;
	background: transparent;
	color: #fff;
	font-size: 1.55em;
}

.input__label--shoko {
	position: absolute;
	top: 2em;
	left: 0;
	display: block;
	width: 100%;
	text-align: left;
	padding: 0em;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: #1586C7;
	pointer-events: none;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transition: -webkit-transform 0.3s 0.1s, color 1s;
	transition: transform 0.3s 0.1s, color 1s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
}

.graphic--shoko {
	stroke: #1586C7;
	pointer-events: none;
	stroke-width: 1px;
	top: 1.25em;
	bottom: 0px;
	height: 3.275em;
	-webkit-transition: -webkit-transform 0.7s, stroke 0.7s;
	transition: transform 0.7s, stroke 0.7s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
} 

.input__field--shoko:focus + .input__label--shoko,
.input--filled .input__label--shoko {
	color: #0d689c;
	-webkit-transform: translate3d(0, 3.5em, 0) scale3d(0.85, 0.85, 1);
	transform: translate3d(0, 3.5em, 0) scale3d(0.85, 0.85, 1);
}

.input__field--shoko:focus ~ .graphic--shoko,
.input--filled .graphic--shoko {
	stroke: #fff;
	-webkit-transform: translate3d(-66.6%, 0, 0);
	transform: translate3d(-66.6%, 0, 0);
}

/* Yoshiko */
.input__field--yoshiko {
	width: 100%;
	background-color: #d0d1d0;
	border: 2px solid transparent;
	-webkit-transition: background-color 0.3s, border-color 0.3s;
	transition: background-color 0.3s, border-color 0.3s;
}

.input__label--yoshiko {
	width: 100%;
	text-align: left;
	position: absolute;
	bottom: 100%;
	pointer-events: none;
	overflow: hidden;
	padding: 0 1.25em;
	-webkit-transform: translate3d(0, 3em, 0);
	transform: translate3d(0, 3em, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--yoshiko {
	color: #8B8C8B;
	padding: 0.25em 0;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--yoshiko::after {
	content: attr(data-content);
	position: absolute;
	font-weight: 800;
	bottom: 100%;
	left: 0;
	height: 100%;
	width: 100%;
	color: #a3d39c;
	padding: 0.25em 0;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-size: 0.85em;
}

.input__field--yoshiko:focus + .input__label--yoshiko,
.input--filled .input__label--yoshiko {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--yoshiko:focus + .input__label--yoshiko .input__label-content--yoshiko,
.input--filled .input__label-content--yoshiko {
	-webkit-transform: translate3d(0, 100%, 0);
	transform: translate3d(0, 100%, 0);
}

.input__field--yoshiko:focus + .input__field--yoshiko,
.input--filled .input__field--yoshiko {
	background-color: transparent;
	border-color: #a3d39c;
}

/* Chisato */

.input--chisato {
	padding-top: 1em;
}

.input__field--chisato {
	width: 100%;
	padding: 0.8em 0.5em;
	background: transparent;
	border: 2px solid;
	color: #b5b5b5;
	-webkit-transition: border-color 0.3s;
	transition: border-color 0.3s;
}

.input__label--chisato {
	width: 100%;
	position: absolute;
	top: 0;
	text-align: left;
	overflow: hidden;
	padding: 0;
	pointer-events: none;
	-webkit-transform: translate3d(0, 3em, 0);
	transform: translate3d(0, 3em, 0);
}

.input__label-content--chisato {
	padding: 0 1em;
	font-weight: 400;
	color: #b5b5b5;
}

.input__label-content--chisato::after {
	content: attr(data-content);
	position: absolute;
	top: -200%;
	left: 0;
	color: #da6484;
	font-weight: 800;
}

.input__field--chisato:focus,
.input--filled .input__field--chisato {
	border-color: #da6484;
}

.input__field--chisato:focus + .input__label--chisato,
.input--filled .input__label--chisato {
	-webkit-animation: anim-chisato-1 0.3s forwards;
	animation: anim-chisato-1 0.3s forwards;
}

.input__field--chisato:focus + .input__label--chisato .input__label-content--chisato,
.input--filled .input__label-content--chisato {
	-webkit-animation: anim-chisato-2 0.3s forwards;
	animation: anim-chisato-2 0.3s forwards;
}

@-webkit-keyframes anim-chisato-1 {
	0%, 50% {
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	51%, 100% {
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
}

@-webkit-keyframes anim-chisato-2 {
	0% {
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
	50%, 51% {
		-webkit-transform: translate3d(0, 100%, 0);
		transform: translate3d(0, 100%, 0);
	}
	100% {
		color: transparent;
		-webkit-transform: translate3d(0, 200%, 0);
		transform: translate3d(0, 200%, 0);
	}
}

/* Kozakura */
.input--kozakura {
	overflow: hidden;
	padding-bottom: 1em;
}

.input__field--kozakura {
	padding: 0.25em 0.5em;
	margin-top: 1.25em;
	width: 100%;
	background: transparent;
	color: #1586C7;
	font-size: 1.55em;
	opacity: 0;
}

.input__label--kozakura {
	width: 100%;
	text-align: left;
	position: absolute;
	top: 1em;
	pointer-events: none;
	overflow: hidden;
	padding: 0 0.25em;
	-webkit-transform: translate3d(1em, 2.75em, 0);
	transform: translate3d(1em, 2.75em, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--kozakura {
	color: #055f92;
	padding: 0.25em 0;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--kozakura::after {
	content: attr(data-content);
	position: absolute;
	font-weight: 800;
	top: 100%;
	left: 0;
	height: 100%;
	width: 100%;
	color: #fff;
	padding: 0.25em 0;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-size: 0.85em;
}

.graphic--kozakura {
	fill: #1586C7;
	pointer-events: none;
	top: 1em;
	bottom: 0px;
	height: 4.5em;
	z-index: -1;
	-webkit-transition: -webkit-transform 0.7s, fill 0.7s;
	transition: transform 0.7s, fill 0.7s;
	-webkit-transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
	transition-timing-function: cubic-bezier(0, 0.25, 0.5, 1);
} 

.input__field--kozakura:focus,
.input--filled .input__field--kozakura {
	-webkit-transition: opacity 0s 0.35s;
	transition: opacity 0s 0.35s;
	opacity: 1;
}

.input__field--kozakura:focus + .input__label--kozakura,
.input--filled .input__label--kozakura {
	-webkit-transition-delay: 0.15s;
	transition-delay: 0.15s;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--kozakura:focus + .input__label--kozakura .input__label-content--kozakura,
.input--filled .input__label-content--kozakura {
	-webkit-transition-delay: 0.15s;
	transition-delay: 0.15s;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

.input__field--kozakura:focus ~ .graphic--kozakura,
.input--filled .graphic--kozakura {
	fill: #fff;
	-webkit-transform: translate3d(-66.6%, 0, 0);
	transform: translate3d(-66.6%, 0, 0);
}

/* Makiko */
.input--makiko {
	overflow: hidden;
	background: #8781BD;
}

.input__field--makiko {
	width: 100%;
	background: transparent;
	color: #797693;
	z-index: 10;
	font-weight: 500;
}

.input__label--makiko {
	position: absolute;
	width: 100%;
	text-align: left;
	pointer-events: none;
	color: #fff;
}

.input__label--makiko::before {
	content: '';
	position: absolute;
	width: 30px;
	height: 30px;
	top: 45%;
	left: 20px;
	background: url(../img/search.svg) no-repeat center center;
	background-size: 100%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--makiko {
	display: block;
	padding: 1.5em 0 0 2.75em;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__field--makiko:focus + .input__label--makiko::before,
.input--filled .input__label--makiko::before {
	-webkit-transform: scale3d(38, 38, 1);
	transform: scale3d(38, 38, 1);
}

/* Sae */
.input--sae {
	overflow: hidden;
	width: 200px;
	margin: 0 2em 2em;
}

.input__field--sae {
	background: transparent;
	width: 100%;
	color: #fff;
	padding: 1em 0 0.25em;
	font-weight: 500;
}

.input__label--sae {
	position: absolute;
	width: 100%;
	text-align: left;
	color: #7771ab;
	padding: 0;
	height: 100%;
	pointer-events: none;
}

.input__label--sae::after {
	content: '';
	position: absolute;
	width: 100%;
	height: 2px;
	background: #fff;
	bottom: 0;
	-webkit-transform: translate3d(100%, 0, 0);
	transform: translate3d(100%, 0, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.icon--sae {
	position: absolute;
	bottom: 0;
	font-size: 1em;
	opacity: 0.5;
	left: -30px;
	color: #fff;
	pointer-events: none;
	-webkit-transform: translate3d(205px, 0, 0);
	transform: translate3d(205px, 0, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--sae {
	padding: 0;
	font-size: 1.3em;
	display: block;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transform: translate3d(0, 1.85em, 0);
	transform: translate3d(0, 1.85em, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__field--sae:focus + .input__label--sae .input__label-content--sae,
.input--filled .input__label-content--sae {
	-webkit-transform: translate3d(0, 0, 0) scale3d(0.7, 0.7, 1);
	transform: translate3d(0, 0, 0) scale3d(0.7, 0.7, 1);
}

.input__field--sae:focus + .input__label--sae::after,
.input--filled .input__label--sae::after {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--sae:focus + .input__label--sae .icon--sae,
.input--filled .icon--sae {
	-webkit-transition-delay: 0.01s;
	transition-delay: 0.01s;
	-webkit-transform: translate3d(0, 0, 0) rotate3d(0, 0, 1, -90deg);
	transform: translate3d(0, 0, 0) rotate3d(0, 0, 1, -90deg);
}

/* Nariko */
.input--nariko {
	overflow: hidden;
	padding-top: 2em;
}

.input__field--nariko {
	width: 100%;
	background: transparent;
	opacity: 0;
	padding: 0.35em;
	z-index: 100;
	color: #f18292;
}

.input__label--nariko {
	width: 100%;
	bottom: 0;
	position: absolute;
	pointer-events: none;
	text-align: left;
	color: #8E9191;
	padding: 0 0.5em;
}

.input__label--nariko::before {
	content: '';
	position: absolute;
	width: 100%;
	height: 4em;
	top: 100%;
	left: 0;
	background: #fff;
	border-top: 4px solid #6B6E6E;
	-webkit-transform: translate3d(0, -3px, 0);
	transform: translate3d(0, -3px, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label-content--nariko {
	padding: 0.5em 0;
	-webkit-transform-origin: 0% 100%;
	transform-origin: 0% 100%;
	-webkit-transition: -webkit-transform 0.3s, color 0.3s;
	transition: transform 0.3s, color 0.3s;
}

.input__field--nariko:focus,
.input--filled .input__field--nariko {
	cursor: text;
	opacity: 1;
	-webkit-transition: opacity 0s 0.3s;
	transition: opacity 0s 0.3s;
} 

.input__field--nariko:focus + .input__label--nariko::before,
.input--filled .input__label--nariko::before {
	-webkit-transition-delay: 0.1s;
	transition-delay: 0.1s;
	-webkit-transform: translate3d(0, -3.3em, 0);
	transform: translate3d(0, -3.3em, 0);
}

.input__field--nariko:focus + .input__label--nariko .input__label-content--nariko,
.input--filled .input__label-content--nariko {
	color: #6B6E6E;
	-webkit-transform: translate3d(0, -3.3em, 0) scale3d(0.81, 0.81, 1);
	transform: translate3d(0, -3.3em, 0) scale3d(0.81, 0.81, 1);
}

/* Fumi */
.input--fumi {
	background: #fff;
	overflow: hidden;
	padding: 0.25em 0;
}

.input--fumi::after {
	content: '';
	width: 1px;
	position: absolute;
	top: 0.5em;
	bottom: 0.5em;
	left: 2.5em;
	background: #f0f0f0;
	z-index: 100;
}

.input__field--fumi {
	background: transparent;
	padding: 1.5em 1em 0.25em 3.15em;
	width: 100%;
	color: #00aeef;
}

.input__label--fumi {
	position: absolute;
	width: 100%;
	text-align: left;
	padding-left: 4.5em;
	pointer-events: none;
}

.icon--fumi {
	width: 2em;
	position: absolute;
	top: 0;
	left: 0;
	padding: 1em 0 0 0.5em;
}

.input__label-content--fumi {
	padding: 1.7em 0;
	display: inline-block;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
}

.input__label-content--fumi span {
	display: inline-block;
}

.input__field--fumi:focus + .input__label--fumi .input__label-content--fumi,
.input--filled .input__label-content--fumi {
	-webkit-animation: anim-fumi-1 0.3s forwards;
	animation: anim-fumi-1 0.3s forwards;
}

@-webkit-keyframes anim-fumi-1 {
	50% {
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	51% {
		-webkit-transform: translate3d(0, -3em, 0) scale3d(0.85, 0.85, 1);
		transform: translate3d(0, -3em, 0) scale3d(0.85, 0.85, 1);
	}
	100% {
		color: #a3a3a3;
		-webkit-transform: translate3d(0, -1.1em, 0) scale3d(0.85, 0.85, 1);
		transform: translate3d(0, -1.1em, 0) scale3d(0.85, 0.85, 1);
	}
}

@keyframes anim-fumi-1 {
	50% {
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	51% {
		-webkit-transform: translate3d(0, -3em, 0) scale3d(0.85, 0.85, 1);
		transform: translate3d(0, -3em, 0) scale3d(0.85, 0.85, 1);
	}
	100% {
		color: #a3a3a3;
		-webkit-transform: translate3d(0, -1.1em, 0) scale3d(0.85, 0.85, 1);
		transform: translate3d(0, -1.1em, 0) scale3d(0.85, 0.85, 1);
	}
}


.input__field--fumi:focus + .input__label--fumi .icon--fumi,
.input--filled .icon--fumi {
	-webkit-animation: anim-fumi-2 0.3s forwards;
	animation: anim-fumi-2 0.3s forwards;
}

@-webkit-keyframes anim-fumi-2 {
	50% {
		opacity: 1;
		-webkit-transform: translate3d(0, -3em, 0);
		transform: translate3d(0, -3em, 0);
	}
	50.25% {
		opacity: 0;
		-webkit-transform: translate3d(0, -3em, 0);
		transform: translate3d(0, -3em, 0);
	}
	50.75% {
		opacity: 0;
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	51% {
		opacity: 1;
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
		color: #00aeef;
	}
}

@keyframes anim-fumi-2 {
	50% {
		opacity: 1;
		-webkit-transform: translate3d(0, -3em, 0);
		transform: translate3d(0, -3em, 0);
	}
	50.25% {
		opacity: 0;
		-webkit-transform: translate3d(0, -3em, 0);
		transform: translate3d(0, -3em, 0);
	}
	50.75% {
		opacity: 0;
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	51% {
		opacity: 1;
		-webkit-transform: translate3d(0, 3em, 0);
		transform: translate3d(0, 3em, 0);
	}
	100% {
		opacity: 1;
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
		color: #00aeef;
	}
}


/* Ruri */
.input__field--ruri {
	width: 100%;
	background: transparent;
	padding: 0.5em 0;
	margin-bottom: 2em;
	color: #fff;
}

.input__label--ruri {
	width: 100%;
	position: absolute;
	text-align: left;
	font-size: 1em;
	padding: 10px 0 5px;
	pointer-events: none;
}

.input__label--ruri::after {
	content: '';
	position: absolute;
	width: 100%;
	height: 7px;
	background: #6a7989;
	left: 0;
	top: 100%;
	-webkit-transform-origin: 50% 100%;
	transform-origin: 50% 100%;
	-webkit-transition: -webkit-transform 0.3s, background-color 0.3s;
	transition: transform 0.3s, background-color 0.3s;
}

.input__label-content--ruri {
	padding: 0;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transition: -webkit-transform 0.3s, color 0.3s;
	transition: transform 0.3s, color 0.3s;
}

.input__field--ruri:focus + .input__label--ruri::after,
.input--filled .input__label--ruri::after {
	background: #a3d39c;
	-webkit-transform: scale3d(1, 0.25, 1);
	transform: scale3d(1, 0.25, 1);
}

.input__field--ruri:focus + .input__label--ruri .input__label-content--ruri,
.input--filled .input__label--ruri .input__label-content--ruri {
	color: #a3d39c;
	-webkit-transform: translate3d(0, 2em, 0) scale3d(0.655, 0.655, 1);
	transform: translate3d(0, 2em, 0) scale3d(0.655, 0.655, 1);
}

/* Kohana */
.input--kohana {
	overflow: hidden;
	background: #fff;
}

.input__field--kohana {
	width: 100%;
	background: transparent;
	padding-left: 2.75em;
	color: #6a7989;
}

.input__label--kohana {
	position: absolute;
	width: 100%;
	text-align: left;
	pointer-events: none;
}

.input__label-content--kohana {
	display: inline-block;
	width: auto;
	-webkit-transform: translate3d(-1.75em, 0, 0);
	transform: translate3d(-1.75em, 0, 0);
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
}

.icon--kohana {
	display: inline-block;
	margin-top: 0.9em;
	-webkit-transform: translate3d(-2em, 0, 0);
	transform: translate3d(-2em, 0, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__field--kohana:focus + .input__label--kohana .input__label-content--kohana,
.input--filled .input__label-content--kohana {
	opacity: 0;
	-webkit-transform: translate3d(200px, 0, 0);
	transform: translate3d(200px, 0, 0);
}

.input__field--kohana:focus + .input__label--kohana .icon--kohana,
.input--filled  .icon--kohana {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

/* Manami */
.input--manami {
	overflow: hidden;
}

.input__field--manami {
	width: 100%;
	background: transparent;
	padding: 0.5em;
	margin-bottom: 2em;
	color: #f48fb1;
	z-index: 100;
	opacity: 0;
}

.input__label--manami {
	width: 100%;
	position: absolute;
	text-align: left;
	padding: 0.5em 0;
	pointer-events: none;
	font-size: 1em;
}

.input__label--manami::before,
.input__label--manami::after {
	content: '';
	position: absolute;
	width: 100%;
	left: 0;
}

.input__label--manami::before {
	height: 100%;
	background: #fff;
	top: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.input__label--manami::after {
	height: 2px;
	background: #6a7989;
	top: 100%;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
}

.input__label-content--manami {
	padding: 0;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transition: -webkit-transform 0.3s, color 0.3s;
	transition: transform 0.3s, color 0.3s;
}

.input__field--manami:focus,
.input--filled .input__field--manami {
	opacity: 1;
	-webkit-transition: opacity 0s 0.3s;
	transition: opacity 0s 0.3s;
}

.input__field--manami:focus + .input__label--manami::before,
.input--filled .input__label--manami::before {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.input__field--manami:focus + .input__label--manami::after,
.input--filled .input__label--manami::after {
	opacity: 0;
}

.input__field--manami:focus + .input__label--manami .input__label-content--manami,
.input--filled .input__label--manami .input__label-content--manami {
	color: #cbc4c6;
	-webkit-transform: translate3d(0, 2.1em, 0) scale3d(0.65, 0.65, 1);
	transform: translate3d(0, 2.1em, 0) scale3d(0.65, 0.65, 1);
}
    
    </style>
    
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="common/header.jsp" />
	
	<h2>input--nao</h2>
	<span class="input input--nao">
    <input class="input__field input__field--nao" type="text" id="input-3" />
    <label class="input__label input__label--nao" for="input-3">
      <span class="input__label-content input__label-content--nao">Invitation Code</span>
    </label>
    <svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
      <path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
    </svg>
  </span>

  <h2>Minoru</h2>
  <span class="input input--minoru">
    <input class="input__field input__field--minoru" type="text" id="input-13" />
    <label class="input__label input__label--minoru" for="input-13">
      <span class="input__label-content input__label-content--minoru">First Name</span>
    </label>
  </span>
  
  <jsp:include page="common/footer.jsp" />
	
</body>
</html>