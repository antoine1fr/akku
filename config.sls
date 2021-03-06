;; -*- mode: scheme; coding: utf-8 -*-
;; Copyright © 2019 Göran Weinholt <goran@weinholt.se>
;; SPDX-License-Identifier: GPL-3.0-or-later
#!r6rs

(library (akku config)
  (export install-prefix)
  (import (rnrs (6)))

;; Installation prefix, e.g. "/usr" or "/usr/local". Set to #f when
;; there is no global installation.
(define (install-prefix) #f))
