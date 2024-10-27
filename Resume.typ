#let primary-color = rgb("#7B2CBF") 
#let section-color = rgb("#7B2CBF")
#let accent-color = rgb("#9D4EDD")
#let date-color = rgb("#5A189A")

#let icon(name, sz: 0.7em) = {
  box(
    height: sz,
    image("icons/" + name)
  )
  h(0.2em)
}

#let ilink(url, text, icon-name) = {
  link(url)[#icon(icon-name)#text]
}

#let resume(name: "", title: "", contact: (), body) = {
  set document(author: name, title: "Resume - " + name)
  set page(
    margin: (x: 1.5cm, y: 1.5cm),
    numbering: none,
  )
  set text(font: "Inter", size: 10pt)
  
  align(center)[
    #block(text(weight: 700, size: 24pt, primary-color)[#name])
    #v(0.3em)
    #block(text(style: "italic", size: 14pt)[#title])
    #v(0.5em)
    #contact.join(" · ")
    #v(0.8em)
    #line(length: 100%, stroke: 0.5pt + primary-color)
  ]
  
  body
}

#let section(title) = {
  v(1em)
  block(
    text(
      weight: "bold",
      section-color,
      size: 14pt,
    )[#title]
  )
  line(length: 100%, stroke: 0.5pt + accent-color)
}

#let entry(
  title: "",
  subtitle: "",
  date: "",
  details: (),
) = {
  block(spacing: 0.5em)[
    #grid(
      columns: (1fr, auto),
      text(weight: "bold")[#title],
      text(date-color)[#date]
    )
    #text(style: "italic")[#subtitle]
    
    #if details != () {
      list(indent: 1em, ..details)
    }
  ]
}

#show: resume.with(
  name: "AZAR ALI SHAIKH",
  title: "Engine Programmer & Illustrator",
  contact: (
    box[#icon("email.svg")azarmisan\@gmail.com],
    box[#ilink("https://github.com/Miisan-png", "GitHub: Miisan-png", "github.svg")],
    box[#ilink("https://miisan.artstation.com", "ArtStation: Miisan", "artstation.svg")],
    box[#ilink("https://miisan.itch.io", "itch.io: Miisan", "itch.svg")],
  ),
)

#section("SUMMARY")
Passionate game engine programmer and illustrator with expertise in custom engine development and graphics programming. Specializing in creating efficient tools and libraries for game development while maintaining an active presence in the open-source community. Experienced in both technical implementation and artistic creation.

#section("EDUCATION")
#entry(
  title: "Bachelor's in Computer Games Development",
  subtitle: "Asia Pacific University",
  date: "2024 - Present",
  details: (
    [Current CGPA: 3.95],
    [Focus on engine development and graphics programming],
  )
)

#section("TECHNICAL SKILLS")
#table(
  columns: (1fr, 2fr),
  stroke: none,
  align: (x, y) => left,
  [*Programming Languages*], [C++, C, Rust, Python, Lua, GDScript, x86 Assembly, Csharp, TypeScript],
  [*Game Engines*], [Godot, Unity, LÖVE2D, Bevy, MonoGame ,Custom Engine Development],
  [*Development Tools*], [Git, Visual Studio, VS Code, Neovim, Vercel],
  [*Web Technologies*], [React, Node.js],
  [*Areas of Expertise*], [Engine Architecture, Graphics Programming, Tool Development, UI/UX Design],
)

#section("OPEN SOURCE PROJECTS")
#entry(
  title: [#icon("link.svg") #link("https://github.com/Miisan-png/SuperSprite2D")["Custom Node Plugin for Godot 4.x"]],
  subtitle: "Lead Developer",
  date: "2023",
  details: (
    [Developed SuperSprite2D plugin for enhanced sprite animation control in Godot 4],
    [Implemented function calling system for animated sprites],
    [Created comprehensive documentation and examples],
  )
)

#entry(
  title: [#icon("link.svg") #link("https://github.com/Miisan-png/Love-Dialogue")["Love-Dialogue Library"]],
  subtitle: "Creator & Maintainer",
  date: "2023",
  details: (
    [Created a dialogue system with custom scripting language for LÖVE2D],
    [Designed user-friendly API for game developers],
    [Implemented parser and runtime for custom dialogue scripting],
  )
)

#entry(
  title: [#icon("link.svg") #link("https://github.com/Miisan-png/Miiui")["Miiui - GUI Library"]],
  subtitle: "Lead Developer",
  date: "2023",
  details: (
    [Developed comprehensive GUI library for LÖVE2D],
    [Implemented responsive design system and customizable themes],
    [Created modular component architecture],
  )
)

#entry(
  title: [#icon("link.svg") #link("https://github.com/dialogic-godot/dialogic")["Dialogic Plugin Contributions"]],
  subtitle: "Open Source Contributor",
  date: "2023",
  details: (
    [Contributed to popular dialogue system plugin for Godot],
    [Enhanced functionality and fixed critical bugs],
    [Collaborated with international developer community],
  )
)

#entry(
  title: [#icon("link.svg") #link("https://apugdc.vercel.app")["APUGDC Website"]],
  subtitle: "Contributor",
  date: "2024",
  details: (
    [Developing club website using React and TypeScript],
    [Implementing responsive design and club management features],
    [Deployed and maintained on Vercel platform],
  )
)

#section("PROFESSIONAL EXPERIENCE")
#entry(
  title: "Freelance Game Programmer",
  subtitle: "Independent Developer",
  date: "2023 - Present",
  details: (
    [Develop custom game engines and tools for clients],
    [Create efficient and maintainable game systems],
    [Implement graphics optimization techniques],
    [Collaborate with artists and designers for optimal implementation],
  )
)

#entry(
  title: "Freelance Illustrator",
  subtitle: "Digital Artist",
  date: "2020 - Present",
  details: (
    [Create professional game art and illustrations],
    [Specialize in pixel art and digital illustration],
    [Maintain active portfolio on ArtStation],
    [Work with international clients on game art projects],
  )
)

#section("SPEAKING ENGAGEMENTS")
#entry(
  title: [#icon("link.svg") #link("https://apugdc.vercel.app")["Pixel Art for Dummies Workshop"]],
  subtitle: "APUGDC Club",
  date: "2024",
  details: (
    [Hosted comprehensive workshop on pixel art fundamentals],
    [Demonstrated techniques for game art creation],
    [Mentored students in digital art techniques],
  )
)

#section("CURRENT PROJECTS")
#entry(
  title: "Custom 2D Game Engine",
  subtitle: "Personal Project",
  date: "2024",
  details: (
    [Developing a 2D game engine using Csharp with Lua scripting integration],
    [Implementing modern rendering techniques and efficient asset management],
    [Creating developer-friendly tools and workflow systems],
    [Building extensible plugin architecture],
  )
)

#section("LANGUAGES")
- English (Professional Working Proficiency)