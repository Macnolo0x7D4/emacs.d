;; early-init.el --- Early initialization -*- lexical-binding: t -*-

(setq gc-cons-threshold most-positive-fixnum)

(setq package-enable-at-startup nil)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq load-prefer-newer t)
