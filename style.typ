#let resume(
  author: "",
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  accent-color: "#000000",
  font: "",
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: 10pt,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: (0.5in),
    "us-letter",
  )


  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(left)
    #set text(
      weight: 700,
      size: 20pt,
    )
    #it.body
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info
  pad(
    top: 0.25em,
    align(left)[
      #(
        (
          if pronouns != "" {
            pronouns
          },
          if email != "" {
            link("mailto:" + email)[#email]
          },
          if phone != "" {
            phone
          },
          if location != "" {
            location
          },
          if github != "" {
            link(github)[GitHub]
          },
          if linkedin != "" {
            link(linkedin)[LinkedIn]
          },
          if personal-site != "" {
            link(personal-site)[Personal Website]
          },
        ).filter(x => x != none).join("  |  ")
      )
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  pad[
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  pad[
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(institution),
    top-right: location,
    bottom-left: emph(degree),
    bottom-right: emph(dates),
  )
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(title),
    top-right: dates,
    bottom-left: company,
    bottom-right: emph(location),
  )
}

#let publication(
  title: "",
  authors: [],
  conference: "",
  url: "",
) = {
  pad[
    *#title*
    #if url != "" {
      [ (#link("https://" + url)[link])]
    } \
    #(authors.map(author => if author.find("Cheng Wang") != none { strong(author) } else { author }).join(", ")) \
    #conference
  ]
}

#let project(
  name: "",
  role: "",
  url: "",
  dates: "",
) = {
  pad[
    *#name*
    #if url != "" {
      [ (#link("https://" + url)[link])]
    }
    #h(1fr) #dates \
    #role
  ]
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  pad[
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let award(
  name: "",
  year: "",
) = {
  pad[
    *#name*
    #h(1fr) #year
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}