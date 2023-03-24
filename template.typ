// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let resume(
  title: "", location: "", postalCode: "", phoneNumber: "", email: "",
  authors: (), experiences: (), education: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  // set page(numbering: "1", number-align: center)
  set text(font: "Linux Libertine", lang: "en")

  // Title row.
  align(center)[
    #block(text(weight: 700, 2em, title))
  ]

  pad(
    top: 0.05em,
    bottom: 0.05em,
    x: 1em,
    grid(
      columns: (1fr),
      gutter: 0.15em,
      align(center, location + ", "+ postalCode),
    ),
  )
  pad(
    top: 0.1em,
    bottom: 0.1em,
    x: 1em,
    grid(
      columns: (1fr),
      gutter: 0.05em,
      align(center, phoneNumber + " - "+ email),
    ),
  )
  line(length: 100%)

  let count = experiences.len()
  let nrows = calc.min(count, 1)
  grid(
    column-gutter: 0pt,
    row-gutter: 35pt,
    ..experiences.map(experience => [
      #block( text(weight: 700, 1.5em, spacing: 50%, experience.employee))
      #block(above: 0pt, below: 0pt, text(experience.jobTitle))
      #pad(
        y: -0.25em,
        grid(
          columns: 2,
          gutter: 0.05em,
          column-gutter: 0pt,
          row-gutter: 0pt,
          experience.startDate + " - " + experience.endDate + " ", " " + experience.location
        ),
      ),
      #pad(
        x: 1em,
        y: -0.75em,
        list(..experience.points.map(point => point))
      )
    ]),
  )
  line(length: 100%)
  pad(y: 2em,
    grid(
      columns: 1,
      gutter: 0.05em,
      column-gutter: 0pt,
      row-gutter: 10pt,
      block(above: 2pt, below: 2pt, text(weight: 700, 1.5em, spacing: 50%, education.name)),
      block(above: 0pt, below: 0pt, text(education.degree)),
      grid(
          columns: 2,
          gutter: 0.05em,
          column-gutter: 0pt,
          row-gutter: 0pt,
          education.startDate + " - " + education.endDate + " ", " | " + education.location,
      ),
      pad(
          x: 1em,
          list(..education.points.map(point => point))
      )
    )
  )
  line(length: 100%)
  text(weight: 700, 1.5em, "References")
  pad(y:1em, text("Available on Request"))
  // Main body.
  set par(justify: true)

}