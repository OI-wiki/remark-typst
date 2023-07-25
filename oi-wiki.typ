// Functions for OI-Wiki remark-typst

#let antiflash-white = cmyk(0%, 0%, 0%, 8.125%)

#let warning-orange = (bright: cmyk(0%, 4.125%, 7%, 0%), dark: cmyk(0%, 8.25%, 14%, 0%))

#let info-blue = (bright: cmyk(7.875%, 2%, 0%, 0%), dark: cmyk(15.75%, 4%, 0%, 0%))

#let horizontalrule = line(start: (25%, 0%), end: (75%, 0%), stroke: .5pt)

#let blockquote(content) = block(width: 100%, fill: antiflash-white, inset: (top: .5em, right: 2em, bottom: .5em, left: 2em))[#content]

#let details(color: (bright: cmyk, dark: cmyk), ..items) = {
    let items = items.pos()
    if items.len() != 2 {
        panic("#details function needs exactly two content blocks")
    }

    block[
        #block(width: 100%, fill: color.dark, below: 0em, inset: (top: .5em, right: 1em, bottom: .5em, left: 1em))[#items.at(0)]
        #block(width: 100%, fill: color.bright, above: 0em, inset: (top: .5em, right: 2em, bottom: .5em, left: 2em))[#items.at(1)]]
}

#let authors(authors) = block(stroke: 1pt, inset: 1em,)[Authors: #authors]

#let codeblock(code: str, lang: str) = block(width: 100%, fill: antiflash-white, inset: (top: .5em, right: 2em, bottom: .5em, left: 2em))[#raw(code, lang: lang)]
