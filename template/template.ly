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

% Auto-resizing.
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
  \new Staff {
    % QOL overrides.
    \once\override Score.MetronomeMark.padding = #4
    \tempo "Larghetto" 4 = 60

    % NOTE: https://lilypond.org/doc/v2.23/Documentation/notation/music
    \once\override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once\override Staff.TimeSignature.text = \markup{\fontsize #1 \compound-meter #'(4 . 4) }
    \once\override Staff.TimeSignature.extra-offset = #'(0 . 0)
    \time 4/4
    \cadenzaOn

    % Music goes here.
    \clef "bass" {
      a b c d
      \break
      e f g a'
    }
  }
}

% template.ly ends here