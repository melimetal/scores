% song.ly

\version "2.24.4"

\language "english"

\header {
  copyrightYear = "1970"
  title = \markup \column {
    \fill-line { "Black Magic Woman" }
    \fill-line { "Santana" }
  }
  composer = "Peter Green"
  poet = "Fleetwood Mac"
  % opus = "OPUS N"
  % date = "XXXX - XXXX"
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

% Colours.
neutralSubtle = "#BABABA"
neutralSubtleAlt = "#A6A6A6"
neutralText = "#2E2E2E"
neutralTextStrong = "#141414"

\score {
  \new Staff {

    \override Staff.StaffSymbol.color = \neutralSubtle
    \override Staff.TimeSignature.color = \neutralTextStrong
    \override Staff.Clef.color = \neutralText
    \override Voice.NoteHead.color = \neutralText
    \override Voice.Stem.color = \neutralText
    \override Staff.BarLine.color = \neutralSubtleAlt
    \once\override Score.MetronomeMark.padding = #4
    \tempo "Larghetto" 4 = 60
    % NOTE: https://lilypond.org/doc/v2.23/Documentation/notation/music
    \once\override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once\override Staff.TimeSignature.text = \markup{ \fontsize #1 \compound-meter #'(4 . 4) }
    \once\override Staff.TimeSignature.extra-offset = #'(0 . 0)
    \time 4/4

    \cadenzaOn

    % Music goes here.
    \relative {
      \clef "bass" {
       %% TODO
      }
    }
  }
}

% song.ly ends here