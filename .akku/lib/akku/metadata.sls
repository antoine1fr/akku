#!r6rs
;; This file was written by Akku.scm
(library (akku metadata)
  (export
    main-package-name
    main-package-version
    installed-libraries
    installed-assets)
  (import (only (rnrs) define quote))
  (define main-package-name '"akku")
  (define main-package-version '"1.0.0-alpha.0")
  (define installed-libraries
    '((akku config) (akku format lockfile) (akku format manifest)
      (akku lib archive-maint) (akku lib bundle) (akku lib fetch)
      (akku lib file-parser) (akku lib git) (akku lib graph)
      (akku lib init) (akku lib install) (akku lib library-name)
      (akku lib lock) (akku lib manifest) (akku lib publish)
      (akku lib r7rs) (akku lib repo-scanner) (akku lib scan)
      (akku lib schemedb) (akku lib scripts) (akku lib solver)
      (akku lib solver choice) (akku lib solver dummy-db)
      (akku lib solver expression) (akku lib solver internals)
      (akku lib solver logging) (akku lib solver promotions)
      (akku lib solver search-graph) (akku lib solver universe)
      (akku lib update) (akku lib utils) (akku private compat)
      (akku private http) (akku private logging)
      (akku private utils) (akku-r7rs base) (akku-r7rs compat)
      (akku-r7rs include) (chibi match) (chibi match-test)
      (compression adler-32) (compression bitstream)
      (compression gzip) (compression huffman)
      (compression inflate) (compression lzma) (compression lzma2)
      (compression private common) (compression private compat)
      (compression sliding-buffer) (compression tar)
      (compression xz) (compression zip) (compression zip extra)
      (compression zlib) (hashing crc) (hashing fixnums)
      (hashing hmac) (hashing md5) (hashing private common)
      (hashing private compat) (hashing sha-1) (hashing sha-2)
      (industria base64) (industria bit-strings)
      (industria buffer) (industria bytevectors)
      (industria crypto aes) (industria crypto arcfour)
      (industria crypto blowfish) (industria crypto des)
      (industria crypto dh) (industria crypto dsa)
      (industria crypto ec) (industria crypto ecdh)
      (industria crypto ecdsa) (industria crypto eddsa)
      (industria crypto entropy) (industria crypto math)
      (industria crypto private aes) (industria crypto rsa)
      (industria der) (industria dns) (industria dns numbers)
      (industria dns private) (industria dns punycode)
      (industria dns types) (industria hexdump)
      (industria openpgp) (industria otr) (industria password)
      (industria ssh) (industria ssh algorithms)
      (industria ssh connection) (industria ssh kex-dh-gex)
      (industria ssh kex-ecdh) (industria ssh kexdh)
      (industria ssh private) (industria ssh private serialize)
      (industria ssh private-keys) (industria ssh public-keys)
      (industria ssh random-art) (industria ssh transport)
      (industria ssh userauth) (industria strings) (industria tcp)
      (ip-address) (laesare reader) (laesare writer) (packrat)
      (pffi) (pffi bv-pointer) (pffi compat) (pffi misc)
      (pffi pointers) (pffi procedure) (pffi struct)
      (pffi variable) (scheme base) (scheme case-lambda)
      (scheme char) (scheme complex) (scheme cxr) (scheme eval)
      (scheme file) (scheme inexact) (scheme lazy) (scheme load)
      (scheme process-context) (scheme r5rs) (scheme read)
      (scheme repl) (scheme time) (scheme write) (semver ranges)
      (semver versions) (spdx ids) (spdx parser)
      (spells algebraic-types) (spells algebraic-types helpers)
      (spells alist) (spells args-fold) (spells array-search)
      (spells ascii) (spells assert) (spells awk)
      (spells awk helpers) (spells cells) (spells condition)
      (spells define-values) (spells delimited-control)
      (spells delimited-readers) (spells engines)
      (spells engines timer) (spells error) (spells field-readers)
      (spells filesys) (spells filesys compat)
      (spells finite-types) (spells foreign)
      (spells foreign compat) (spells foreign conjure)
      (spells foreign frozen-bytes) (spells foreign util)
      (spells format) (spells gc) (spells gc compat) (spells gzip)
      (spells hash-utils) (spells include) (spells include compat)
      (spells include helpers) (spells list-utils)
      (spells logging) (spells match) (spells misc)
      (spells misc compat) (spells network)
      (spells network compat) (spells network utils)
      (spells operations) (spells opt-args) (spells pathname)
      (spells pathname os-string) (spells ports)
      (spells pretty-print) (spells private stexidoc)
      (spells procedure-annotations) (spells process)
      (spells process compat) (spells queue) (spells record-types)
      (spells record-types expand-drt) (spells string-utils)
      (spells syntax-utils) (spells sysutils)
      (spells sysutils compat) (spells table)
      (spells table compat) (spells test-runner)
      (spells test-runner env) (spells testing-utils)
      (spells time-it) (spells time-lib) (spells tracing)
      (spells tracing compat) (spells xvector)
      (spells zipper-tree) (srfi :0) (srfi :0 cond-expand)
      (srfi :1) (srfi :1 lists) (srfi :11) (srfi :11 let-values)
      (srfi :115) (srfi :115 regexp) (srfi :115 regexp boundary)
      (srfi :117) (srfi :117 list-queues) (srfi :125)
      (srfi :125 hashtables) (srfi :126)
      (srfi :126 helpers helpers) (srfi :126 r6rs-hashtables)
      (srfi :127) (srfi :127 lazy-sequences) (srfi :128)
      (srfi :128 comparators) (srfi :129) (srfi :129 titlecase)
      (srfi :13) (srfi :13 strings) (srfi :130)
      (srfi :130 string-cursors) (srfi :131) (srfi :131 records)
      (srfi :132) (srfi :132 sorting) (srfi :133)
      (srfi :133 vectors) (srfi :14) (srfi :14 char-sets)
      (srfi :14 char-sets inversion-list) (srfi :141)
      (srfi :141 integer-division) (srfi :143) (srfi :143 fixnums)
      (srfi :143 fixnums helpers) (srfi :145)
      (srfi :145 assumptions) (srfi :151)
      (srfi :151 bitwise-operations) (srfi :152)
      (srfi :152 strings) (srfi :156)
      (srfi :156 predicate-combiners) (srfi :158)
      (srfi :158 generators-and-accumulators) (srfi :16)
      (srfi :16 case-lambda) (srfi :17)
      (srfi :17 generalized-set!) (srfi :17 helpers) (srfi :19)
      (srfi :19 time) (srfi :19 time compat)
      (srfi :19 time not-implemented) (srfi :2) (srfi :2 and-let*)
      (srfi :23) (srfi :23 error) (srfi :23 error tricks)
      (srfi :25) (srfi :25 multi-dimensional-arrays)
      (srfi :25 multi-dimensional-arrays all)
      (srfi :25 multi-dimensional-arrays arlib) (srfi :26)
      (srfi :26 cut) (srfi :27) (srfi :27 random-bits) (srfi :28)
      (srfi :28 basic-format-strings) (srfi :29)
      (srfi :29 localization) (srfi :31) (srfi :31 rec) (srfi :34)
      (srfi :34 exception-handling) (srfi :35)
      (srfi :35 conditions) (srfi :37) (srfi :37 args-fold)
      (srfi :38) (srfi :38 with-shared-structure) (srfi :39)
      (srfi :39 parameters) (srfi :4) (srfi :4 numeric-vectors)
      (srfi :41) (srfi :41 streams) (srfi :41 streams derived)
      (srfi :41 streams primitive) (srfi :42)
      (srfi :42 eager-comprehensions) (srfi :43)
      (srfi :43 vectors) (srfi :45) (srfi :45 lazy) (srfi :48)
      (srfi :48 intermediate-format-strings)
      (srfi :48 intermediate-format-strings compat) (srfi :5)
      (srfi :5 let) (srfi :51) (srfi :51 rest-values) (srfi :54)
      (srfi :54 cat) (srfi :6) (srfi :6 basic-string-ports)
      (srfi :6 basic-string-ports compat) (srfi :60)
      (srfi :60 integer-bits) (srfi :61) (srfi :61 cond)
      (srfi :64) (srfi :64 testing) (srfi :67)
      (srfi :67 compare-procedures) (srfi :69)
      (srfi :69 basic-hash-tables) (srfi :78)
      (srfi :78 lightweight-testing)
      (srfi :78 lightweight-testing compat) (srfi :8)
      (srfi :8 receive) (srfi :9) (srfi :9 records) (srfi :98)
      (srfi :98 os-environment-variables) (srfi :99)
      (srfi :99 records) (srfi :99 records helper)
      (srfi :99 records inspection) (srfi :99 records procedural)
      (srfi :99 records syntactic) (srfi private OS-id-features)
      (srfi private check-arg) (srfi private define-values)
      (srfi private feature-cond) (srfi private helpers)
      (srfi private include) (srfi private include compat)
      (srfi private let-opt) (srfi private platform-features)
      (srfi private registry) (srfi private vanish) (srfi srfi-0)
      (srfi srfi-48 compat) (srfi srfi-78 compat) (struct pack)
      (wak fmt) (wak fmt c) (wak fmt color) (wak fmt js)
      (wak foof-loop) (wak foof-loop nested) (wak irregex)
      (wak private define-values) (wak private include)
      (wak private include compat) (wak private include filesys)
      (wak private include helper) (wak private include utils)
      (wak private let-optionals) (wak riastreams) (wak syn-param)
      (wak wt-tree) (wak wt-tree mit-compat)))
  (define installed-assets
    '(((include "match/match.scm")
        ("chibi/match/match.scm")
        (chibi match))
      ((include-file ((spells private) ascii))
        ("spells/private/ascii.scm")
        (spells ascii))
      ((include-file ((spells private) assert))
        ("spells/private/assert.scm")
        (spells assert))
      ((include-file ((spells private) condition))
        ("spells/private/condition.scm")
        (spells condition))
      ((include-file ((spells private) format))
        ("spells/private/format.scm")
        (spells format))
      ((include-file ((spells private) misc))
        ("spells/private/misc.scm")
        (spells misc))
      ((include-file ((spells private) xvector))
        ("spells/private/xvector.scm")
        (spells xvector))
      ((include-file ((wak fmt private) fmt))
        ("wak/fmt/private/fmt.scm")
        (wak fmt))
      ((include-file ((wak fmt private) fmt-c))
        ("wak/fmt/private/fmt-c.scm")
        (wak fmt c))
      ((include-file ((wak fmt private) fmt-color))
        ("wak/fmt/private/fmt-color.scm")
        (wak fmt color))
      ((include-file ((wak fmt private) fmt-column))
        ("wak/fmt/private/fmt-column.scm")
        (wak fmt))
      ((include-file ((wak fmt private) fmt-js))
        ("wak/fmt/private/fmt-js.scm")
        (wak fmt js))
      ((include-file ((wak fmt private) fmt-pretty))
        ("wak/fmt/private/fmt-pretty.scm")
        (wak fmt))
      ((include-file ((wak fmt private) mantissa))
        ("wak/fmt/private/mantissa.scm")
        (wak fmt))
      ((include-file ((wak irregex private) irregex-r6rs))
        ("wak/irregex/private/irregex-r6rs.scm")
        (wak irregex))
      ((include-file ((wak irregex private) irregex-utils))
        ("wak/irregex/private/irregex-utils.scm")
        (wak irregex))
      ((include-file ((wak syn-param private) syn-param))
        ("wak/syn-param/private/syn-param.scm")
        (wak syn-param))
      ((include-file/downcase ((wak foof-loop private) foof-loop))
        ("wak/foof-loop/private/foof-loop.scm")
        (wak foof-loop))
      ((include-file/downcase
         ((wak foof-loop private) nested-foof-loop))
        ("wak/foof-loop/private/nested-foof-loop.scm")
        (wak foof-loop nested))
      ((include-file/downcase ((wak riastreams private) stream))
        ("wak/riastreams/private/stream.scm")
        (wak riastreams))
      ((include/resolve ("srfi" "%3a1") "srfi-1-reference.scm")
        ("srfi/%3a1/srfi-1-reference.scm")
        (srfi :1 lists))
      ((include/resolve ("srfi" "%3a115") "regexp-impl.scm")
        ("srfi/%3a115/regexp-impl.scm")
        (srfi :115 regexp))
      ((include/resolve ("srfi" "%3a115") "regexp-impl.scm")
        ("srfi/%3a115/regexp-impl.scm")
        (srfi srfi-115))
      ((include/resolve
         ("srfi" "%3a115" "regexp")
         "boundary-impl.scm")
        ("srfi/%3a115/regexp/boundary-impl.scm")
        (srfi :115 regexp boundary))
      ((include/resolve
         ("srfi" "%3a115" "regexp")
         "boundary-impl.scm")
        ("srfi/%3a115/regexp/boundary-impl.scm")
        (srfi srfi-115 boundary))
      ((include/resolve ("srfi" "%3a117") "list-queues-impl.scm")
        ("srfi/%3a117/list-queues-impl.scm")
        (srfi :117 list-queues))
      ((include/resolve ("srfi" "%3a117") "list-queues-impl.scm")
        ("srfi/%3a117/list-queues-impl.scm")
        (srfi srfi-117))
      ((include/resolve ("srfi" "%3a125") "125.body.scm")
        ("srfi/%3a125/125.body.scm")
        (srfi :125 hashtables))
      ((include/resolve ("srfi" "%3a125") "125.body.scm")
        ("srfi/%3a125/125.body.scm")
        (srfi srfi-125))
      ((include/resolve ("srfi" "%3a126") "126.body.scm")
        ("srfi/%3a126/126.body.scm")
        (srfi :126 r6rs-hashtables))
      ((include/resolve ("srfi" "%3a126") "126.body.scm")
        ("srfi/%3a126/126.body.scm")
        (srfi srfi-126))
      ((include/resolve ("srfi" "%3a127") "lseqs-impl.scm")
        ("srfi/%3a127/lseqs-impl.scm")
        (srfi :127 lazy-sequences))
      ((include/resolve ("srfi" "%3a127") "lseqs-impl.scm")
        ("srfi/%3a127/lseqs-impl.scm")
        (srfi srfi-127))
      ((include/resolve ("srfi" "%3a128") "128.body1.scm")
        ("srfi/%3a128/128.body1.scm")
        (srfi :128 comparators))
      ((include/resolve ("srfi" "%3a128") "128.body1.scm")
        ("srfi/%3a128/128.body1.scm")
        (srfi srfi-128))
      ((include/resolve ("srfi" "%3a128") "128.body2.scm")
        ("srfi/%3a128/128.body2.scm")
        (srfi :128 comparators))
      ((include/resolve ("srfi" "%3a128") "128.body2.scm")
        ("srfi/%3a128/128.body2.scm")
        (srfi srfi-128))
      ((include/resolve ("srfi" "%3a129") "titlecase-impl.scm")
        ("srfi/%3a129/titlecase-impl.scm")
        (srfi :129 titlecase))
      ((include/resolve ("srfi" "%3a129") "titlecase-impl.scm")
        ("srfi/%3a129/titlecase-impl.scm")
        (srfi srfi-129))
      ((include/resolve ("srfi" "%3a129") "titlemaps.scm")
        ("srfi/%3a129/titlemaps.scm")
        (srfi :129 titlecase))
      ((include/resolve ("srfi" "%3a129") "titlemaps.scm")
        ("srfi/%3a129/titlemaps.scm")
        (srfi srfi-129))
      ((include/resolve ("srfi" "%3a13") "srfi-13.scm")
        ("srfi/%3a13/srfi-13.scm")
        (srfi :13 strings))
      ((include/resolve ("srfi" "%3a130") "130.body.scm")
        ("srfi/%3a130/130.body.scm")
        (srfi :130 string-cursors))
      ((include/resolve ("srfi" "%3a130") "130.body.scm")
        ("srfi/%3a130/130.body.scm")
        (srfi srfi-130))
      ((include/resolve ("srfi" "%3a132") "delndups.scm")
        ("srfi/%3a132/delndups.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "delndups.scm")
        ("srfi/%3a132/delndups.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "lmsort.scm")
        ("srfi/%3a132/lmsort.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "lmsort.scm")
        ("srfi/%3a132/lmsort.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "median.scm")
        ("srfi/%3a132/median.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "median.scm")
        ("srfi/%3a132/median.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "sort.scm")
        ("srfi/%3a132/sort.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "sort.scm")
        ("srfi/%3a132/sort.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "sortp.scm")
        ("srfi/%3a132/sortp.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "sortp.scm")
        ("srfi/%3a132/sortp.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "vector-util.scm")
        ("srfi/%3a132/vector-util.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "vector-util.scm")
        ("srfi/%3a132/vector-util.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "vhsort.scm")
        ("srfi/%3a132/vhsort.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "vhsort.scm")
        ("srfi/%3a132/vhsort.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "visort.scm")
        ("srfi/%3a132/visort.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "visort.scm")
        ("srfi/%3a132/visort.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "vmsort.scm")
        ("srfi/%3a132/vmsort.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "vmsort.scm")
        ("srfi/%3a132/vmsort.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a132") "vqsort2.scm")
        ("srfi/%3a132/vqsort2.scm")
        (srfi :132 sorting))
      ((include/resolve ("srfi" "%3a132") "vqsort2.scm")
        ("srfi/%3a132/vqsort2.scm")
        (srfi srfi-132))
      ((include/resolve ("srfi" "%3a133") "vectors-impl.scm")
        ("srfi/%3a133/vectors-impl.scm")
        (srfi :133 vectors))
      ((include/resolve ("srfi" "%3a133") "vectors-impl.scm")
        ("srfi/%3a133/vectors-impl.scm")
        (srfi srfi-133))
      ((include/resolve
         ("srfi" "%3a14")
         "srfi-14-base-char-sets.scm")
        ("srfi/%3a14/srfi-14-base-char-sets.scm")
        (srfi :14 char-sets))
      ((include/resolve ("srfi" "%3a14") "srfi-14-char-sets.scm")
        ("srfi/%3a14/srfi-14-char-sets.scm")
        (srfi :14 char-sets))
      ((include/resolve ("srfi" "%3a14") "srfi-14.scm")
        ("srfi/%3a14/srfi-14.scm")
        (srfi :14 char-sets))
      ((include/resolve
         ("srfi" "%3a14" "char-sets")
         "inversion-list-impl.scm")
        ("srfi/%3a14/char-sets/inversion-list-impl.scm")
        (srfi :14 char-sets inversion-list))
      ((include/resolve ("srfi" "%3a141") "srfi-141-impl.scm")
        ("srfi/%3a141/srfi-141-impl.scm")
        (srfi :141 integer-division))
      ((include/resolve ("srfi" "%3a141") "srfi-141-impl.scm")
        ("srfi/%3a141/srfi-141-impl.scm")
        (srfi srfi-141))
      ((include/resolve
         ("srfi" "%3a152")
         "extend-comparisons.scm")
        ("srfi/%3a152/extend-comparisons.scm")
        (srfi :152 strings))
      ((include/resolve
         ("srfi" "%3a152")
         "extend-comparisons.scm")
        ("srfi/%3a152/extend-comparisons.scm")
        (srfi srfi-152))
      ((include/resolve ("srfi" "%3a152") "macros.scm")
        ("srfi/%3a152/macros.scm")
        (srfi :152 strings))
      ((include/resolve ("srfi" "%3a152") "macros.scm")
        ("srfi/%3a152/macros.scm")
        (srfi srfi-152))
      ((include/resolve ("srfi" "%3a152") "portable.scm")
        ("srfi/%3a152/portable.scm")
        (srfi :152 strings))
      ((include/resolve ("srfi" "%3a152") "portable.scm")
        ("srfi/%3a152/portable.scm")
        (srfi srfi-152))
      ((include/resolve ("srfi" "%3a152") "r7rs-shim.scm")
        ("srfi/%3a152/r7rs-shim.scm")
        (srfi :152 strings))
      ((include/resolve ("srfi" "%3a152") "r7rs-shim.scm")
        ("srfi/%3a152/r7rs-shim.scm")
        (srfi srfi-152))
      ((include/resolve ("srfi" "%3a156") "srfi-156-impl.scm")
        ("srfi/%3a156/srfi-156-impl.scm")
        (srfi :156 predicate-combiners))
      ((include/resolve ("srfi" "%3a156") "srfi-156-impl.scm")
        ("srfi/%3a156/srfi-156-impl.scm")
        (srfi srfi-156))
      ((include/resolve ("srfi" "%3a158") "srfi-158-impl.scm")
        ("srfi/%3a158/srfi-158-impl.scm")
        (srfi :158 generators-and-accumulators))
      ((include/resolve ("srfi" "%3a158") "srfi-158-impl.scm")
        ("srfi/%3a158/srfi-158-impl.scm")
        (srfi srfi-158))
      ((include/resolve ("srfi" "%3a19") "srfi-19.scm")
        ("srfi/%3a19/srfi-19.scm")
        (srfi :19 time))
      ((include/resolve ("srfi" "%3a25") "arlib.scm")
        ("srfi/%3a25/arlib.scm")
        (srfi :25 multi-dimensional-arrays arlib))
      ((include/resolve ("srfi" "%3a25") "arlib.scm")
        ("srfi/%3a25/arlib.scm")
        (srfi srfi-25 arlib))
      ((include/resolve ("srfi" "%3a25") "array.scm")
        ("srfi/%3a25/array.scm")
        (srfi :25 multi-dimensional-arrays all))
      ((include/resolve ("srfi" "%3a25") "array.scm")
        ("srfi/%3a25/array.scm")
        (srfi srfi-25 all))
      ((include/resolve ("srfi" "%3a25") "ix-ctor.scm")
        ("srfi/%3a25/ix-ctor.scm")
        (srfi :25 multi-dimensional-arrays all))
      ((include/resolve ("srfi" "%3a25") "ix-ctor.scm")
        ("srfi/%3a25/ix-ctor.scm")
        (srfi srfi-25 all))
      ((include/resolve ("srfi" "%3a25") "op-ctor.scm")
        ("srfi/%3a25/op-ctor.scm")
        (srfi :25 multi-dimensional-arrays all))
      ((include/resolve ("srfi" "%3a25") "op-ctor.scm")
        ("srfi/%3a25/op-ctor.scm")
        (srfi srfi-25 all))
      ((include/resolve ("srfi" "%3a26") "cut-impl.scm")
        ("srfi/%3a26/cut-impl.scm")
        (srfi :26 cut))
      ((include/resolve ("srfi" "%3a27") "mrg32k3a-a.scm")
        ("srfi/%3a27/mrg32k3a-a.scm")
        (srfi :27 random-bits))
      ((include/resolve ("srfi" "%3a27") "mrg32k3a.scm")
        ("srfi/%3a27/mrg32k3a.scm")
        (srfi :27 random-bits))
      ((include/resolve ("srfi" "%3a37") "srfi-37-reference.scm")
        ("srfi/%3a37/srfi-37-reference.scm")
        (srfi :37 args-fold))
      ((include/resolve ("srfi" "%3a42") "ec.scm")
        ("srfi/%3a42/ec.scm")
        (srfi :42 eager-comprehensions))
      ((include/resolve ("srfi" "%3a43") "vector-lib.scm")
        ("srfi/%3a43/vector-lib.scm")
        (srfi :43 vectors))
      ((include/resolve ("srfi" "%3a51") "srfi-51-impl.scm")
        ("srfi/%3a51/srfi-51-impl.scm")
        (srfi :51 rest-values))
      ((include/resolve ("srfi" "%3a51") "srfi-51-impl.scm")
        ("srfi/%3a51/srfi-51-impl.scm")
        (srfi srfi-51))
      ((include/resolve ("srfi" "%3a54") "srfi-54-impl.scm")
        ("srfi/%3a54/srfi-54-impl.scm")
        (srfi :54 cat))
      ((include/resolve ("srfi" "%3a54") "srfi-54-impl.scm")
        ("srfi/%3a54/srfi-54-impl.scm")
        (srfi srfi-54))
      ((include/resolve ("srfi" "%3a64") "testing-impl.scm")
        ("srfi/%3a64/testing-impl.scm")
        (srfi :64 testing))
      ((include/resolve ("srfi" "%3a67") "compare.scm")
        ("srfi/%3a67/compare.scm")
        (srfi :67 compare-procedures))
      ((include/resolve ("srfi" "%3a78") "check.scm")
        ("srfi/%3a78/check.scm")
        (srfi :78 lightweight-testing))
      ((include/resolve ("srfi" "%3a78") "check.scm")
        ("srfi/%3a78/check.scm")
        (srfi srfi-78)))))
