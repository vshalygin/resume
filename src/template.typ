#let accent = rgb("#24557a")
#let ink = rgb("#20252b")
#let muted = rgb("#5f6872")

// Vertical rhythm: lines < paragraphs < sections.
#let line_spacing = 3pt
#let paragraph_spacing = 6pt
#let section_spacing = 12pt

// Page and typography.
#let page_margin = 16mm
#let body_font = "Arial"
#let body_font_size = 10pt
#let metadata_font_size = 8.5pt
#let role_font_size = 11pt
#let section_font_size = 11pt
#let name_font_size = 20pt

// Reusable component dimensions.
#let photo_size = 3.2cm
#let column_spacing = 10pt
#let inline_spacing = 4pt
#let list_indent = 10pt
#let list_body_indent = 5pt
#let section_rule_thickness = 0.7pt
#let full_width = 100%

#let contact(label, target: none) = {
  if target == none {
    label
  } else {
    link(target)[#label]
  }
}

#let contact_separator = [#h(inline_spacing)|#h(inline_spacing)]

#let email-contacts(emails) = {
  for (index, email) in emails.enumerate() {
    if index > 0 {
      contact_separator
    }
    contact(email, target: "mailto:" + email)
  }
}

#let experience-entry(
  company: "",
  title: "",
  period: "",
  location: "",
  details: none,
) = {
  let header = grid(
    columns: (1fr, auto),
    column-gutter: column_spacing,
    [#text(weight: "bold")[#title] #text(fill: muted)[| #company]],
    align(right, text(size: metadata_font_size, fill: muted)[#period]),
  )

  let location_row = if location == "" {
    ()
  } else {
    (text(size: metadata_font_size, fill: muted)[#location],)
  }

  let details_row = if details == none {
    ()
  } else {
    (details,)
  }

  let rows = (header,) + location_row + details_row

  block(breakable: false, above: 0pt, below: 0pt)[
    #grid(
      columns: (1fr,),
      row-gutter: line_spacing,
      ..rows,
    )
  ]
}

#let project-entry(
  name: "",
  url: "",
  stack: "",
  description: [],
) = block(breakable: false, above: 0pt, below: 0pt)[
  #grid(
    columns: (1fr,),
    row-gutter: line_spacing,
    [
      #if name != "" {
        text(weight: "bold")[#link(url)[#name]]
        h(inline_spacing)
      }
      #text(size: metadata_font_size, fill: muted)[#link(url)[#url]]
      #h(inline_spacing)
      #text(size: metadata_font_size, fill: muted)[#stack]
    ],
    description,
  )
]

#let education-entry(
  institution: "",
  degree: "",
  period: "",
) = {
  let header = grid(
    columns: (1fr, auto),
    column-gutter: column_spacing,
    [#text(weight: "bold")[#institution]],
    align(right, text(size: metadata_font_size, fill: muted)[#period]),
  )

  let rows = (header, degree)

  block(breakable: false, above: 0pt, below: 0pt)[
    #grid(
      columns: (1fr,),
      row-gutter: line_spacing,
      ..rows,
    )
  ]
}

#let skill-row(category: "", items: []) = block(below: paragraph_spacing)[
  #text(weight: "bold")[#category:]
  #h(inline_spacing)
  #items
]

#let resume(
  name: "",
  role: "",
  location: "",
  emails: (),
  phone: "",
  github: "",
  show_photo: false,
  photo: none,
  section_summary: "",
  section_experience: "",
  section_skills: "",
  section_projects: "",
  section_education: "",
  section_languages: "",
  summary: [],
  experience: (),
  skills: [],
  projects: (),
  education: (),
  languages: [],
) = {
  set document(title: name + " - " + role, author: name)
  set page(
    paper: "a4",
    margin: page_margin,
  )
  set text(
    font: body_font,
    size: body_font_size,
    fill: ink,
  )
  set par(leading: line_spacing)
  set list(
    tight: true,
    indent: list_indent,
    body-indent: list_body_indent,
    spacing: line_spacing,
  )
  show link: set text(fill: accent)
  show heading.where(level: 1): it => block(
    breakable: false,
    above: section_spacing,
    below: paragraph_spacing,
  )[
    #grid(
      columns: (1fr,),
      row-gutter: line_spacing,
      text(size: section_font_size, weight: "bold", fill: accent)[#upper(it.body)],
      line(length: full_width, stroke: section_rule_thickness + accent),
    )
  ]

  let header = [
    #text(size: name_font_size, weight: "bold", fill: accent)[#name]
    #v(paragraph_spacing)
    #text(size: role_font_size, weight: "semibold")[#role]
    #v(paragraph_spacing)
    #text(size: metadata_font_size, fill: muted)[
      #location
      #linebreak()
      #email-contacts(emails)
      #if phone != "" {
        linebreak()
        phone
      }
      #linebreak()
      #contact(github, target: github)
    ]
  ]

  if show_photo and photo != none {
    grid(
      columns: (1fr, photo_size),
      column-gutter: column_spacing,
      align(horizon, header),
      image(photo, width: photo_size, height: photo_size, fit: "cover"),
    )
  } else {
    grid(columns: (1fr,), header)
  }

  heading(level: 1)[#section_summary]
  summary

  heading(level: 1)[#section_experience]
  grid(
    columns: (1fr,),
    row-gutter: paragraph_spacing,
    ..experience,
  )

  heading(level: 1)[#section_skills]
  skills

  heading(level: 1)[#section_projects]
  grid(
    columns: (1fr,),
    row-gutter: paragraph_spacing,
    ..projects,
  )

  heading(level: 1)[#section_education]
  grid(
    columns: (1fr,),
    row-gutter: paragraph_spacing,
    ..education,
  )

  heading(level: 1)[#section_languages]
  languages
}
