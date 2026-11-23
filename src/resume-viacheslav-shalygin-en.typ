#import "template.typ": *

#resume(
  name: "Viacheslav Shalygin",
  role: "C++ Developer",
  location: "Saint Petersburg, Russia | open to remote work and relocation",
  emails: ("me@vshalygin.dev",),
  github: "https://github.com/vshalygin",
  show_photo: false,
  photo: none,

  section_summary: "Professional summary",
  section_experience: "Experience",
  section_skills: "Technical skills",
  section_projects: "Personal projects",
  section_education: "Education",
  section_languages: "Languages",

  summary: [
    C++ developer with more than 4 years of professional software development experience and more than 6 years of hands-on experience with C++. I specialize in application and network programming, library and API design, and multithreaded programming. I also have experience developing graphical user interfaces.
    I seek work that calls for reliability, an understanding of low-level mechanisms, and ownership of technically complex components. I develop software for Windows and Linux.
  ],

  experience: (
    experience-entry(
      company: "Independent Open-Source Development",
      title: "C++ Developer",
      period: "Jun 2026 - Sep 2026",
      location: "Saint Petersburg, Russia / full-time",
      details: [
        - Independently developed the open-source vshalygin/common project. Designed the architecture and API, implemented and tested the code, configured the build and CI, wrote the documentation, and provided support for Windows and Linux.
      ],
    ),

    experience-entry(
      company: "Kaspersky Lab",
      title: "Developer",
      period: "Oct 2025 - Nov 2025",
      location: "Moscow, Russia / full-time, remote",
    ),

    experience-entry(
      company: "Doctor Web, Ltd.",
      title: "Software Engineer",
      period: "May 2021 - Jun 2025",
      location: "Saint Petersburg, Russia / full-time, hybrid",
      details: [
        - Maintained several components of a Windows product that implemented its graphical user interface and application logic. Added features, refactored code, fixed bugs, wrote technical documentation, reviewed code, and worked with related project teams to define and agree on requirements.
        - Investigated how Windows capabilities could support required features and helped plan project development within business requirements.
        - Migrated projects to the Sciter GUI library and extensively refactored the application logic while preserving existing functionality. Contributed to the overall architecture of new applications and independently designed and implemented individual modules.
        - Configured CI/CD pipelines for projects in GitLab.
        - Periodically supported teams on related projects by writing and reviewing code.
        - Wrote unit tests for new and existing functionality, advised colleagues on the projects I was responsible for, and mentored junior developers, sharing practical experience with them.
      ],
    ),
  ),

  skills: [
    #skill-row(
      category: "C++",
      items: [C++17, C++20, multithreading, template metaprogramming],
    )
    #skill-row(
      category: "Libraries and protocols",
      items: [STL, Boost, Protocol Buffers, GoogleTest, doctest, SQLite, Sciter],
    )
    #skill-row(
      category: "Systems",
      items: [Windows, Linux, TCP/IP, UDP, Boost.Asio, Boost.Signals2, IPC, IOCP],
    )
    #skill-row(
      category: "Build and tooling",
      items: [CMake, Visual Studio, Git, Gitlab CI, CTest, vcpkg, Docker, OpenAI Codex],
    )
    #skill-row(
      category: "Engineering practices",
      items: [architecture and API design, unit testing, fuzzing, integration testing, code review, debugging, sanitizers, TDD, event-driven architecture, technical documentation],
    )
    #skill-row(
      category: "Additional programming languages",
      items: [SQL, Python, JavaScript],
    )
  ],

  projects: (
    project-entry(
      name: "vshalygin/common",
      url: "https://github.com/vshalygin/common",
      stack: "C++17 | CMake | Windows | Linux | Boost | Protobuf",
      description: [
        - Developed common-lib, a cross-platform collection of general-purpose utilities for asynchronous programming, synchronization, memory management, and data handling. Key components include a future/promise implementation with continuation chains, #raw("ordered_lock") for acquiring multiple locks in a consistent order, and template metaprogramming utilities.
        - Developed rpc-lib, an asynchronous bidirectional RPC library built on Protocol Buffers with typed services, a custom binary protocol, and a transport-independent architecture. Implemented request-response correlation for concurrent calls, timeouts, cancellation, and connection lifecycle management. The transport abstraction decouples application services from TCP, Windows Named Pipes, and an in-memory transport.
        - Structured the project as a set of installable CMake libraries with exported targets, CMake Presets, and dependency management through vcpkg. The project includes more than 900 test cases implemented with GoogleTest and executed via CTest. CI covers builds using MSVC, GCC, and Clang on Windows and Linux, sanitizer-enabled builds, and code coverage reporting.
      ],
    ),
  ),

  education: (
    education-entry(
      institution: "Saint Petersburg State University, Faculty of Physics",
      degree: "Master's degree in Applied Mathematics and Physics",
      period: "2018 - 2020",
    ),
    education-entry(
      institution: "Saint Petersburg State University, Faculty of Physics",
      degree: "Bachelor's degree in Applied Mathematics and Physics",
      period: "2014 - 2018",
    ),
  ),

  languages: [
    *Russian:* Native | *English:* Upper-Intermediate (B2)
  ],
)
