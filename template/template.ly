% template.ly

\version "2.24.4"

\language "english"

\header {
  copyrightYear = "20XX"
  title = \markup \column {
    \fill-line { "Title" }
    \fill-line { "Subtitle" }
  }
  composer = "Composer"
  poet = "Poet"
  opus = "OPUS N"
  date = "XXXX - XXXX"
  tagline = ##f
}

\paper {
  top-margin = 2.4
  right-margin = 2.4
  left-margin = 2.4
  bottom-margin = 2.4
  indent = 0.0
  page-breaking = #ly:one-page-breaking
  system-system-spacing.basic-distance = 16
}

\score {
  \new Staff \with {
    \omit TimeSignature
  } {
    \clef "bass" {
      a b c d e f g a'
    }
  }
}

% template.ly ends here