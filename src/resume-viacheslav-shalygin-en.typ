#import "template.typ": *

#resume(
  name: "Viacheslav Shalygin",
  role: "Senior C++ Developer",
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
    Senior C++ developer with 4+ years of professional software development experience and 6+ years of hands-on experience with C++. Areas of expertise include library and API design, concurrent programming, asynchronous I/O, resource management, and cross-platform development on Windows and Linux.
    Currently building an open-source suite of C++ libraries and seeking roles that value reliability, a deep understanding of low-level systems, and ownership of technically complex components.
  ],

  experience: (
    experience-entry(
      company: "Independent Open-Source Development",
      title: "C++ Developer",
      period: "Jun 2026 - Present",
      location: "Saint Petersburg, Russia / full-time",
      details: [
        - Own the full development lifecycle of the open-source vshalygin/common project, including architecture and API design, implementation, testing, build and CI configuration, documentation, and support for Windows and Linux.
      ],
    ),

    experience-entry(
      company: "Kaspersky Lab",
      title: "C++ Developer",
      period: "Oct 2025 - Nov 2025",
      location: "Moscow, Russia / full-time, remote",
    ),

    experience-entry(
      company: "Doctor Web, Ltd.",
      title: "Software Engineer",
      period: "May 2021 - Jun 2025",
      location: "Saint Petersburg, Russia / full-time, hybrid",
      details: [
        - Maintained several components of Windows desktop products, covering both user interface and business logic.
        - Contributed to the migration of several projects to a modern technology stack and a new GUI library; designed and implemented APIs exposed to JavaScript.
        - Designed and implemented a new communication layer between the desktop client and a background service. The reusable library simplified client-side code, eliminated recurring defects, and was adopted by another team.
        - Designed and implemented an abstraction layer that decoupled the GUI library from the business logic, enabling application developers to focus on business logic without interacting directly with the GUI library.
        - Investigated incidents, developed unit tests and benchmarks for critical components, reviewed code across related projects, and resolved defects.
        - Advised engineers, designers, and managers on component behavior and the technical feasibility of proposed features; provided effort estimates and mentored junior developers.
      ],
    ),
  ),

  skills: [
    #skill-row(
      category: "C++",
      items: [C++17, C++20, multithreading, concurrent programming, template metaprogramming],
    )
    #skill-row(
      category: "Libraries and protocols",
      items: [Boost, Protocol Buffers, GoogleTest],
    )
    #skill-row(
      category: "Systems",
      items: [Windows, Linux, TCP/IP, IPC, IOCP, asynchronous I/O],
    )
    #skill-row(
      category: "Build and tooling",
      items: [CMake, CTest, vcpkg, Git, Visual Studio, Docker, GitHub Actions],
    )
    #skill-row(
      category: "Engineering practices",
      items: [architecture and API design, unit and integration testing, code review, debugging, sanitizers],
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
        - Structured the project as a set of installable CMake libraries with exported targets, CMake Presets, and dependency management through vcpkg. The project includes more than 900 test cases implemented with GoogleTest and executed via CTest. CI covers MSVC, GCC, and Clang builds on Windows and Linux, sanitizer-enabled builds, and code coverage reporting.
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
