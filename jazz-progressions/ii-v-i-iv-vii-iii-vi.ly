\version "2.18.2"

\include "keyboards.ly"

\header {
  title = "Chord Progressions"
  subtitle = "ii-V-I-IV-vii°-iii-vi"
  subsubtitle = "( ♭7-9-♭3-5 | 3-13-♭7-9 | 7-9-3-5 | 3-13-7-9 | 7-1-♭3-♭5 | 3-♯5-♭7-♭9 | ♭7-9-♭3-5 )"
  tagline = ##f
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

global = {
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  %  \set Staff.printKeyCancellation = ##f  %% Doesn't work when changing to C major or A minor.
  \omit Staff.KeyCancellation
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.KeySignature.break-visibility = ##(#f #f #f)
}


chordNames = \chordmode {
  \global

  \key c \major
  d1:m9
  g:13
  c:maj9
  f:maj13
  \key a \minor
  b:m7.5-
  e:aug9-
  a:m9
  \bar "||"

  \key g \major
  a1:m9
  d:13
  g:maj9
  c:maj13
  \key e \minor
  fis:m7.5-
  b:aug9-
  e:m9
  \bar "||"

  \key d \major
  e1:m9
  a:13
  d:maj9
  g:maj13
  \key b \minor
  cis:m7.5-
  fis:aug9-
  b:m9
  \bar "||"

  \key a \major
  b1:m9
  e:13
  a:maj9
  d:maj13
  \key fis \minor
  gis:m7.5-
  cis:aug9-
  fis:m9
  \bar "||"

  \key e \major
  fis1:m9
  b:13
  e:maj9
  a:maj13
  \key cis \minor
  dis:m7.5-
  gis:aug9-
  cis:m9
  \bar "||"

  \key b \major
  cis1:m9
  fis:13
  b:maj9
  e:maj13
  \key gis \minor
  ais:m7.5-
  dis:aug9-
  gis:m9
  \bar "||"

  \key fis \major
  gis1:m9
  cis:13
  fis:maj9
  b:maj13
  \key dis \minor
  eis:m7.5-
  ais:aug9-
  dis:m9
  \bar "||"

%%%%%%%%

  \key ges \major
  as1:m9
  des:13
  ges:maj9
  ces:maj13
  \key es \minor
  f:m7.5-
  bes:aug9-
  es:m9
  \bar "||"

  \key des \major
  es1:m9
  as:13
  des:maj9
  ges:maj13
  \key bes \minor
  c:m7.5-
  f:aug9-
  bes:m9
  \bar "||"

  \key as \major
  bes1:m9
  es:13
  as:maj9
  des:maj13
  \key f \minor
  g:m7.5-
  c:aug9-
  f:m9
  \bar "||"

  \key es \major
  f1:m9
  bes:13
  es:maj9
  as:maj13
  \key c \minor
  d:m7.5-
  g:aug9-
  c:m9
  \bar "||"

  \key bes \major
  c1:m9
  f:13
  bes:maj9
  es:maj13
  \key g \minor
  a:m7.5-
  d:aug9-
  g:m9
  \bar "||"

  \key f \major
  g1:m9
  c:13
  f:maj9
  bes:maj13
  \key d \minor
  e:m7.5-
  a:aug9-
  d:m9
  \bar "||"

  \key c \major
  d1:m9
  g:13
  c:maj9
  f:maj13
  \key a \minor
  b:m7.5-
  e:aug9-
  a:m9
  \bar "||"

}

melody = \relative c'' {
  \global

  \key c \major
  \mark \markup \box \pad-markup #0.5 \sans "C/Am"
  <c e f a>1^\markup\keys #'(c' e' f' a')
  <b e f a>1^\markup\keys #'(b e' f' a')
  <b d e g>1^\markup\keys #'(b d' e' g')
  <a d e g>1^\markup\keys #'(a d' e' g')
  \break
  \key a \minor
  <a b d f>1^\markup\keys #'(a b d' f')
  <gis c d f>1^\markup\keys #'(gis c' d' f')
  <g b c e>1^\markup\keys #'(g b c' e')
  \break

  \key g \major
  \mark \markup \box \pad-markup #0.5 \sans "G/Em"
  <g b c e>1^\markup\keys #'(g b c' e')
  <fis b c e>1^\markup\keys #'(fis b c' e')
  <fis a b d>1^\markup\keys #'(fis a b d')
  <e a b d>1^\markup\keys #'(e a b d')
  \break
  \key e \minor
  <e fis a c>1^\markup\keys #'(e fis a c')
  <dis g a c>1^\markup\keys #'(dis g a c')
  <d fis g b>1^\markup\keys #'(d fis g b)
  \break

  \key d \major
  \mark \markup \box \pad-markup #0.5 \sans "D/Bm"
  <d' fis g b>1^\markup\keys #'(d' fis' g' b')
  <cis fis g b>1^\markup\keys #'(cis' fis' g' b')
  <cis e fis a>1^\markup\keys #'(cis' e' fis' a')
  <b e fis a>1^\markup\keys #'(b e' fis' a')
  \break
  \key b \minor
  <b cis e g>1^\markup\keys #'(b cis' e' g')
  <ais d e g>1^\markup\keys #'(ais d' e g')
  <a cis d fis>1^\markup\keys #'(a cis' d' fis')
  \break

  %  \pageBreak

  \key a \major
  \mark \markup \box \pad-markup #0.5 \sans "A/F♯m"
  <a cis d fis>1^\markup\keys #'(a cis' d' fis')
  <gis cis d fis>1^\markup\keys #'(gis cis' d' fis')
  <gis b cis e>1^\markup\keys #'(gis b cis' e')
  <fis b cis e>1^\markup\keys #'(fis b cis' e')
  \break
  \key fis \minor
  <fis gis b d>1^\markup\keys #'(fis gis b d')
  <eis a b d>1^\markup\keys #'(f a b d')
  <e gis a cis>1^\markup\keys #'(e gis a cis')
  \break

  \key e \major
  \mark \markup \box \pad-markup #0.5 \sans "E/C♯m"
  <e gis a cis>1^\markup\keys #'(e gis a cis')
  <dis gis a cis>1^\markup\keys #'(dis gis a cis')
  <dis fis gis b>1^\markup\keys #'(dis fis gis b)
  <cis fis gis b>1^\markup\keys #'(cis fis gis b)
  \break
  \key cis \minor
  <cis dis fis a>1^\markup\keys #'(cis dis fis a)
  <bis e fis a>1^\markup\keys #'(c e fis a)
  <b dis e gis>1^\markup\keys #'(dis e gis)
  \break

  \key b \major
  \mark \markup \box \pad-markup #0.5 \sans "B/G♯m"
  <b' dis e gis>1^\markup\keys #'(b dis' e' gis')
  <ais dis e gis>1^\markup\keys #'(ais dis' e' gis')
  <ais cis dis fis>1^\markup\keys #'(ais cis' dis fis')
  <gis cis dis fis>1^\markup\keys #'(gis cis' dis' fis')
  \break
  \key gis \minor
  <gis ais cis e>1^\markup\keys #'(gis ais cis' e')
  <fisis b cis e>1^\markup\keys #'(g b cis' e')
  <fis ais b dis>1^\markup\keys #'(fis ais b dis')
  \break

  %  \pageBreak

  \key fis \major
  \mark \markup \box \pad-markup #0.5 \sans "F♯/D♯m"
  <fis ais b dis>1^\markup\keys #'(fis ais b dis')
  <eis ais b dis>1^\markup\keys #'(f ais b dis')
  <eis gis ais cis>1^\markup\keys #'(f gis ais cis')
  <dis gis ais cis>1^\markup\keys #'(dis gis ais cis')
  \break
  \key dis \minor
  <dis eis gis b>1^\markup\keys #'(dis f gis b)
  <cisis fis gis b>1^\markup\keys #'(d fis gis b)
  <cis eis fis ais>1^\markup\keys #'(cis f fis ais)
  \break

  %  \pageBreak

  \key ges \major
  \mark \markup \box \pad-markup #0.5 \sans "G♭/E♭m"
  <ges' bes ces es>1^\markup\keys #'(ges bes b ees')
  <f bes ces es>1^\markup\keys #'(f bes b ees')
  <f as bes des>1^\markup\keys #'(f aes bes des')
  <es as bes des>1^\markup\keys #'(ees aes bes des')
  \break
  \key es \minor
  <es f as ces>1^\markup\keys #'(ees f aes b)
  <d ges as ces>1^\markup\keys #'(d ges aes b)
  <des f ges bes>1^\markup\keys #'(des f ges bes)
  \break

  \key des \major
  \mark \markup \box \pad-markup #0.5 \sans "D♭/B♭m"
  <des' f ges bes>1^\markup\keys #'(des' f' ges' bes')
  <c f ges bes>1^\markup\keys #'(c' f' ges' bes')
  <c es f as>1^\markup\keys #'(c' ees' f' aes')
  <bes es f as>1^\markup\keys #'(bes ees' f' aes')
  \break
  \key bes \minor
  <bes c es ges>1^\markup\keys #'(bes c' ees' ges')
  <a des es ges>1^\markup\keys #'(a des' ees' ges')
  <as c des f>1^\markup\keys #'(aes c' des' f')
  \break

  \key as \major
  \mark \markup \box \pad-markup #0.5 \sans "A♭/Fm"
  <as c des f>1^\markup\keys #'(aes c' des' f')
  <g c des f>1^\markup\keys #'(g c' des' f')
  <g bes c es>1^\markup\keys #'(g bes c' ees')
  <f bes c es>1^\markup\keys #'(f bes c' ees')
  \break
  \key f \minor
  <f g bes des>1^\markup\keys #'(f g bes des')
  <e as bes des>1^\markup\keys #'(e aes bes des')
  <es g as c>1^\markup\keys #'(ees g aes c')
  \break

  \key es \major
  \mark \markup \box \pad-markup #0.5 \sans "E♭/Cm"
  <es g as c>1^\markup\keys #'(ees g aes c')
  <d g as c>1^\markup\keys #'(d g aes c')
  <d f g bes>1^\markup\keys #'(d f g bes)
  <c f g bes>1^\markup\keys #'(c f g bes)
  \break
  \key c \minor
  <c d f as>1^\markup\keys #'(c d f aes)
  <b es f as>1^\markup\keys #'(ees f aes)
  <bes d es g>1^\markup\keys #'(d ees g)
  \break

  \key bes \major
  \mark \markup \box \pad-markup #0.5 \sans "B♭/Gm"
  <bes' d es g>1^\markup\keys #'(bes d' ees' g')
  <a d es g>1^\markup\keys #'(a d' ees' g')
  <a c d f>1^\markup\keys #'(a c' d' f')
  <g c d f>1^\markup\keys #'(g c' d' f')
  \break
  \key g \minor
  <g a c es>1^\markup\keys #'(g a c' ees')
  <fis bes c es>1^\markup\keys #'(fis bes c' ees')
  <f a bes d>1^\markup\keys #'(f a bes d')
  \break

  \key f \major
  \mark \markup \box \pad-markup #0.5 \sans "F/Dm"
  <f a bes d>1^\markup\keys #'(f a bes d')
  <e a bes d>1^\markup\keys #'(e a bes d')
  <e g a c>1^\markup\keys #'(e g a c')
  <d g a c>1^\markup\keys #'(d g a c')
  \break
  \key d \minor
  <d e g bes>1^\markup\keys #'(d e g bes)
  <cis f g bes>1^\markup\keys #'(cis f g bes)
  <c e f a>1^\markup\keys #'(c e f a)
  \break

  \key c \major
  \mark \markup \box \pad-markup #0.5 \sans "C/Am"
  <c' e f a>1^\markup\keys #'(c' e' f' a')
  <b e f a>1^\markup\keys #'(b e' f' a')
  <b d e g>1^\markup\keys #'(b d' e' g')
  <a d e g>1^\markup\keys #'(a d' e' g')
  \break
  \key a \minor
  <a b d f>1^\markup\keys #'(a b d' f')
  <gis c d f>1^\markup\keys #'(gis c' d' f')
  <g b c e>1^\markup\keys #'(g b c' e')
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
