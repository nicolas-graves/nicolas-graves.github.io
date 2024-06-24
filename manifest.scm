(use-modules (guix packages)
             ((guix licenses) #:prefix license:)
             (guix download)
             (guix build-system ruby)
             (gnu packages ruby))

(define-public ruby-jekyll-postcss
  (package
    (name "ruby-jekyll-postcss")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (rubygems-uri "jekyll-postcss" version))
       (sha256
        (base32 "06b28mcbibhg2jb1x0fk9hrqcwz5nk1v7vbhqw5fwddwhs2bj77l"))))
    (build-system ruby-build-system)
    (arguments '(#:tests? #f))  ; got no time to check for tests
    (propagated-inputs (list jekyll ruby-rake))
    (synopsis "A PostCSS plugin for Jekyll.")
    (description "This package provides a @code{PostCSS} plugin for Jekyll.")
    (home-page "https://github.com/mhanberg/jekyll-postcss")
    (license license:expat)))

(packages->manifest
 (append
  (list ruby-jekyll-postcss)
  (specifications->packages
   (list "ruby"  ; even when propagated, essential for $GEM_PATH
         "jekyll"
         "ruby-minima"))))
