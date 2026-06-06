#import "style.typ": *

// Put your personal information here, replacing mine
#let name = "Cheng Wang"
#let location = "San Diego, CA"
#let email = "galaxea1111@gmail.com"
#let github = "https://www.github.com/Galaxeaaa"
#let linkedin = "https://www.linkedin.com/in/chengwang1111/"
#let personal-site = "https://galaxeaaa.github.io"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  // location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  personal-site: personal-site,
  accent-color: "#0038A8",
  font: "libertinus serif",
)

/*
 * Lines that start with == are formatted into section headings
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
 * #work(company: "", dates: "", location: "", title: "", employer-address: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

== Education

#edu(
  institution: "University of California San Diego",
  location: "San Diego, CA",
  dates: dates-helper(start-date: "09/08/2022", end-date: "06/30/2024"),
  degree: "Master of Science, Computer Science",
)
Advisor: Prof. Tzu-mao Li \
Cumulative GPA: 4.0\/4.0 \

#edu(
  institution: "Zhejiang University",
  location: "Hangzhou, Zhejiang, China",
  dates: dates-helper(start-date: "09/01/2018", end-date: "06/30/2022"),
  degree: "Bachelor of Engineering, Computer Science and Technology",
)
Chu Kochen Honors College \
Advisor: Prof. Rui Wang \
Cumulative GPA: 3.9\/4.0, GPA in Major: 4.0\/4.0 \


== Work Experience

#work(
  title: "Computer Vision Engineer",
  // location: "Remote",
  company: "Zima International Inc. DBA Dandy",
  employer-address: "22 Cortland Street, 30th Floor, New York, NY 10007",
  dates: dates-helper(start-date: "04/21/2025", end-date: "Present"),
)
- Responsible for making technical decisions on algorithmic strategy and data representations to accelerate the creation of esthetic dental restorations, implementing state-of-the-art CV, inverse rendering, and PBR methods for recovering and matching teeth color and optical properties from images, 3D textures, and meshes to manufacturing constraints.
- Implemented an Inverse Rendering approach to solve the problems related to creating esthetic dental restorations.
- Implemented a software tool to accelerate building the mapping between true color and manufacturing paints/ink.

#work(
  title: "Research Assistant",
  // location: "San Diego, CA",
  company: "University of California, San Diego",
  employer-address: "9500 Gilman Drive, La Jolla, CA 92093",
  dates: dates-helper(start-date: "10/14/2024", end-date: "04/20/2025"),
)
- Responsible for leading and assisting research projects related to computer graphics and vision.
- Worked on HotSpot, a novel method for robust neural signed distance field optimization from point cloud signal, inspired by the relationship between heat diffusion in absorbing media and distance functions; see Publications.
- Advised by Prof. Tzu-mao Li.

#work(
  title: "Rendering Engineer Intern",
  // location: "Redwood City, CA",
  company: "Electronic Arts Inc.",
  employer-address: "209 Redwood Shores Parkway, Redwood City, CA 94065",
  dates: dates-helper(start-date: "06/20/2023", end-date: "09/08/2023"),
)
- Rendering engineer intern on the Star Wars FPS team at Respawn Entertainment: used and modified Unreal Engine 5 with engineering and art teams to improve decal rendering; adapted a tiled decal pass into separate pre-GBuffer and post-GBuffer passes for more accurate material blending. #emph[Real-time rendering pipeline / engine integration.]
- Investigated Unreal Engine 5 Lumen global illumination; documented costs and configurations of far-field lighting and reflections for the team.
- Mentored by Steve Karolewics and Alex Lemke.

#work(
  title: "Software Engineer Intern",
  // location: "Hangzhou, Zhejiang, China",
  company: "RaysEngine Tech Co. LTD",
  employer-address: "Room 1001, 10th Floor, Building 4, Haizhi Center, Yuhang District, Hangzhou, Zhejiang, China, 311113",
  dates: dates-helper(start-date: "12/01/2021", end-date: "06/20/2022"),
)
- Responsible for research and development on digital human technology with emphasis on skin rendering: implemented and optimized texture-space subsurface scattering for the company's rendering engine.
- Contributed to the deferred rendering pipeline: performance and quality improvements, especially subsurface scattering for translucent materials.


== Publications and Preprints

#publication(
  title: "A Generalizable Light Transport 3D Embedding for Global Illumination",
  authors: ("Bing Xu", "Mukund Varma T.", "Cheng Wang", "Tzu-Mao Li", "Lifan Wu", "Bart Wronski", "Ravi Ramamoorthi", "Marco Salvi"),
  conference: [_SIGGRAPH 2026_],
  url: "https://arxiv.org/pdf/2510.18189",
)

#publication(
  title: "HotSpot: Screened Poisson Equation for Signed Distance Function Optimization",
  authors: ("Zimo Wang*", "Cheng Wang*", "Taiki Yoshino", "Sirui Tao", "Ziyang Fu", "Tzu-Mao Li"),
  conference: [_CVPR 2025_],
  url: "https://arxiv.org/abs/2411.14628",
)

#publication(
  title: "ZeroRF: Zero-shot Sparse View 360° Reconstruction",
  authors: ("Ruoxi Shi*", "Xinyue Wei*", "Cheng Wang", "Hao Su"),
  conference: [_CVPR 2024_],
  url: "https://arxiv.org/abs/2312.09249",
)


== Thesis

#publication(
  title: "Near-Field Lighting Estimation via Ray Regression",
  authors: ("Cheng Wang", "Tzu-Mao Li"),
  conference: [_Master Thesis_],
  url: "https://escholarship.org/uc/item/27v4090s",
)


== Skills
- *Programming Languages*: C/C++, Python, JavaScript, HTML/CSS, Bash
- *Technologies*: PyTorch, Git, Docker, Kubernetes, OpenGL, Unreal Engine, Blender, React, Tailwind CSS
- *Interests*: Badminton, Computer Games, Classical Music, Cooking
