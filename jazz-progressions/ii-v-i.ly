\version "2.18.2"

\include "keyboards.ly"

\header {
  title = "II-V-I"
  subtitle = "Jazz Chords"
  subsubtitle = "(♭7-9-♭3-5 | 3-13-♭7-9 | 7-9-3-5)"
  tagline = ##f
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

global = {
  \key c \major
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
%  \set Staff.printKeyCancellation = ##f  %% Doesn't work when changing to C major or A minor.
  \omit Staff.KeyCancellation
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.KeySignature.break-visibility = ##(#f #f #f)
}

chordNames = \chordmode {
  \global
  d1:m9
  g:13
  c:maj9
  \bar "||"

  a1:m9
  d:13
  g:maj9
  \bar "||"

  e1:m9
  a:13
  d:maj9
  \bar "||"

  b1:m9
  e:13
  a:maj9
  \bar "||"

  fis1:m9
  b:13
  e:maj9
  \bar "||"

  cis1:m9
  fis:13
  b:maj9
  \bar "||"

  gis1:m9
  cis:13
  fis:maj9
  \bar "||"

  \pageBreak

  aes1:m9
  des:13
  ges:maj9
  \bar "||"

  ees1:m9
  aes:13
  des:maj9
  \bar "||"

  bes1:m9
  ees:13
  aes:maj9
  \bar "||"

  f1:m9
  bes:13
  ees:maj9
  \bar "||"

  c1:m9
  f:13
  bes:maj9
  \bar "||"

  g1:m9
  c:13
  f:maj9
  \bar "||"

  d1:m9
  g:13
  c:maj9
  \bar "|."

  \pageBreak

%%%%%%%%%%%%%%%%%%%%

  d1:m9
  g:13
  c:maj9
  \bar "||"

  c1:m9
  f:13
  bes:maj9
  \bar "||"

  bes1:m9
  ees:13
  aes:maj9
  \bar "||"

  aes1:m9
  des:13
  ges:maj9
  \bar "||"

  fis1:m9
  b:13
  e:maj9
  \bar "||"

  e1:m9
  a:13
  d:maj9
  \bar "||"

  \pageBreak

  g1:m9
  c:13
  f:maj9
  \bar "||"

  f1:m9
  bes:13
  ees:maj9
  \bar "||"

  ees1:m9
  aes:13
  des:maj9
  \bar "||"

  cis1:m9
  fis:13
  b:maj9
  \bar "||"

  b1:m9
  e:13
  a:maj9
  \bar "||"

  a1:m9
  d:13
  g:maj9
  \bar "|."

}

melody = \relative c' {
  \global
  \key c \major
  \mark \markup \box \pad-markup #0.5 \sans "C"
  <c' e f a>1^\markup\keys #'(c' e' f' a')
  <b e f a>1^\markup\keys #'(b  e' f' a')
  <b d e g>1^\markup\keys #'(b  d' e' g')
  \break

  \key g \major
  \mark \markup \box \pad-markup #0.5 \sans "G"
  <g b c e>1^\markup\keys #'(g b c' e')
  <fis b c e>1^\markup\keys #'(fis b c' e')
  <fis a b d>1^\markup\keys #'(fis a b d')
  \break

  \key d \major
  \mark \markup \box \pad-markup #0.5 \sans "D"
  <d fis g b>1^\markup\keys #'(d fis g b)
  <cis fis g b>1^\markup\keys #'(cis fis g b)
  <cis e fis a>1^\markup\keys #'(cis e fis a)
  \break

  \key a \major
  \mark \markup \box \pad-markup #0.5 \sans "A"
  <a' cis d fis>1^\markup\keys #'(a cis' d' fis')
  <gis cis d fis>1^\markup\keys #'(gis cis' d' fis')
  <gis b cis e>1^\markup\keys #'(gis b cis' e')
  \break

  \key e \major
  \mark \markup \box \pad-markup #0.5 \sans "E"
  <e gis a cis>1^\markup\keys #'(e gis a cis')
  <dis gis a cis>1^\markup\keys #'(dis gis a cis')
  <dis fis gis b>1^\markup\keys #'(dis fis gis b)
  \break

  \key b \major
  \mark \markup \box \pad-markup #0.5 \sans "B"
  <b' dis e gis>1^\markup\keys #'(b dis' e' gis')
  <ais dis e gis>1^\markup\keys #'(ais dis' e' gis')
  <ais cis dis fis>1^\markup\keys #'(ais cis' dis' fis')
  \break

  \key fis \major
  \mark \markup \box \pad-markup #0.5 \sans "F♯"
  <fis ais b dis>1^\markup\keys #'(fis ais b dis')
  <eis ais b dis>1^\markup\keys #'(f ais b dis')
  <eis gis ais cis>1^\markup\keys #'(f gis ais cis')
  \break

  \pageBreak

  \key ges \major
  \mark \markup \box \pad-markup #0.5 \sans "G♭"
  <ges bes ces ees>1^\markup\keys #'(ges bes b ees')
  <f bes ces ees>1^\markup\keys #'(f bes b ees')
  <f aes bes des>1^\markup\keys #'(f aes bes des')
  \break

  \key des \major
  \mark \markup \box \pad-markup #0.5 \sans "D♭"
  <des f ges bes>1^\markup\keys #'(des f ges bes)
  <c f ges bes>1^\markup\keys #'(c f ges bes)
  <c ees f aes>1^\markup\keys #'(c ees f aes)
  \break

  \key aes \major
  \mark \markup \box \pad-markup #0.5 \sans "A♭"
  <aes' c des f>1^\markup\keys #'(aes c' des' f')
  <g c des f>1^\markup\keys #'(g c' des' f')
  <g bes c ees>1^\markup\keys #'(g bes c' ees')
  \break

  \key ees \major
  \mark \markup \box \pad-markup #0.5 \sans "E♭"
  <ees g aes c>1^\markup\keys #'(ees g aes c')
  <d g aes c>1^\markup\keys #'(d g aes c')
  <d f g bes>1^\markup\keys #'(d f g bes)
  \break

  \key bes \major
  \mark \markup \box \pad-markup #0.5 \sans "B♭"
  <bes' d ees g>1^\markup\keys #'(bes d' ees' g')
  <a d ees g>1^\markup\keys #'(a d' ees' g')
  <a c d f>1^\markup\keys #'(a c' d' f')
  \break

  \key f \major
  \mark \markup \box \pad-markup #0.5 \sans "F"
  <f a bes d>1^\markup\keys #'(f a bes d')
  <e a bes d>1^\markup\keys #'(e a bes d')
  <e g a c>1^\markup\keys #'(e g a c')
  \break

  \key c \major
  \mark \markup \box \pad-markup #0.5 \sans "C"
  <c' e f a>1^\markup\keys #'(c' e' f' a')
  <b e f a>1^\markup\keys #'(b  e' f' a')
  <b d e g>1^\markup\keys #'(b  d' e' g')
  \break

  \pageBreak

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \key c \major
  \mark \markup \box \pad-markup #0.5 \sans "C"
  <c e f a>1^\markup\keys #'(c' e' f' a')
  <b e f a>1^\markup\keys #'(b  e' f' a')
  <b d e g>1^\markup\keys #'(b  d' e' g')
  \break

  \key bes \major
  \mark \markup \box \pad-markup #0.5 \sans "B♭"
  <bes d ees g>1^\markup\keys #'(bes d' ees' g')
  <a d ees g>1^\markup\keys #'(a d' ees' g')
  <a c d f>1^\markup\keys #'(a c' d' f')
  \break

  \key aes \major
  \mark \markup \box \pad-markup #0.5 \sans "A♭"
  <aes c des f>1^\markup\keys #'(aes c' des' f')
  <g c des f>1^\markup\keys #'(g c' des' f')
  <g bes c ees>1^\markup\keys #'(g bes c' ees')
  \break

  \key ges \major
  \mark \markup \box \pad-markup #0.5 \sans "G♭"
  <ges bes ces ees>1^\markup\keys #'(ges bes b ees')
  <f bes ces ees>1^\markup\keys #'(f bes b ees')
  <f aes bes des>1^\markup\keys #'(f aes bes des')
  \break

  \key e \major
  \mark \markup \box \pad-markup #0.5 \sans "E"
  <e gis a cis>1^\markup\keys #'(e gis a cis')
  <dis gis a cis>1^\markup\keys #'(dis gis a cis')
  <dis fis gis b>1^\markup\keys #'(dis fis gis b)
  \break

  \key d \major
  \mark \markup \box \pad-markup #0.5 \sans "D"
  <d fis g b>1^\markup\keys #'(d fis g b)
  <cis fis g b>1^\markup\keys #'(cis fis g b)
  <cis e fis a>1^\markup\keys #'(cis e fis a)
  \break

  \pageBreak

  \key f \major
  \mark \markup \box \pad-markup #0.5 \sans "F"
  <f a bes d>1^\markup\keys #'(f a bes d')
  <e a bes d>1^\markup\keys #'(e a bes d')
  <e g a c>1^\markup\keys #'(e g a c')
  \break

  \key ees \major
  \mark \markup \box \pad-markup #0.5 \sans "E♭"
  <ees g aes c>1^\markup\keys #'(ees g aes c')
  <d g aes c>1^\markup\keys #'(d g aes c')
  <d f g bes>1^\markup\keys #'(d f g bes)
  \break

  \key des \major
  \mark \markup \box \pad-markup #0.5 \sans "D♭"
  <des f ges bes>1^\markup\keys #'(des f ges bes)
  <c f ges bes>1^\markup\keys #'(c f ges bes)
  <c ees f aes>1^\markup\keys #'(c ees f aes)
  \break

  \key b \major
  \mark \markup \box \pad-markup #0.5 \sans "B"
  <b' dis e gis>1^\markup\keys #'(b dis' e' gis')
  <ais dis e gis>1^\markup\keys #'(ais dis' e' gis')
  <ais cis dis fis>1^\markup\keys #'(ais cis' dis' fis')
  \break

  \key a \major
  \mark \markup \box \pad-markup #0.5 \sans "A"
  <a cis d fis>1^\markup\keys #'(a cis' d' fis')
  <gis cis d fis>1^\markup\keys #'(gis cis' d' fis')
  <gis b cis e>1^\markup\keys #'(gis b cis' e')
  \break

  \key g \major
  \mark \markup \box \pad-markup #0.5 \sans "G"
  <g b c e>1^\markup\keys #'(g b c' e')
  <fis b c e>1^\markup\keys #'(fis b c' e')
  <fis a b d>1^\markup\keys #'(fis a b d')
  \break

}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout {
    indent = #0
      \context {
      \Score
        \omit BarNumber
      }
  }
  \midi { }
}
