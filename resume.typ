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
  font: "New Computer Modern",
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of California, San Diego",
  location: "San Diego, CA",
  dates: dates-helper(start-date: "Sep 2022", end-date: "June 2024"),
  degree: "Master of Science, Computer Science",
)
Advisor: Prof. Tzu-mao Li \
Cumulative GPA: 4.0\/4.0 \

#edu(
  institution: "Zhejiang University",
  location: "Hangzhou, Zhejiang, China",
  dates: dates-helper(start-date: "Sep 2018", end-date: "June 2022"),
  degree: "Bachelor of Engineering, Computer Science and Technology",
)
Chu Kochen Honors College \
Advisor: Prof. Rui Wang \
Cumulative GPA: 3.9\/4.0, GPA in Major: 4.0\/4.0 \


== Work Experience

#work(
  title: "Research Assistant",
  location: "San Diego, CA",
  company: "University of California, San Diego",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Present"),
)
- Working on a very interesting project using a novel method to achieve robust SDF optimization from point cloud signal.
- Submitted a paper to CVPR 2025.

#work(
  title: "Research Intern",
  location: "San Diego, CA",
  company: "SuLab, University of California, San Diego",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Jan 2024"),
)
- Worked on ZeroRF, a novel sparse view 360° reconstruction method based on NeRF (see detail in Publications).
- ZeroRF is published in proceedings of IEEE/CVF Conference on Computer Vision and Pattern Recognition 2024.

#work(
  title: "Software Engineer Intern",
  location: "Redwood City, CA",
  company: "Electronic Arts",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Sep 2023"),
)
- Developed an advanced decal rendering pipeline for a customized Unreal Engine 5, incorporating support for multiple material effects and dynamic material properties on attached decals. This enhancement significantly improved visual fidelity and expanded the creative possibilities for environment artists.
- Conducted in-depth research and documentation maintenance for Unreal Engine's Lumen global illumination system. Provided comprehensive technical analysis and up-to-date documentation, enabling the development team to effectively utilize and optimize the system's capabilities in various projects.

#work(
  title: "Software Engineer Intern",
  location: "Hangzhou, Zhejiang, China",
  company: "RaysEngine Tech Co. LTD",
  dates: dates-helper(start-date: "Dec 2021", end-date: "Jun 2022"),
)
- Conducted advanced research and development on digital human technology, specializing in skin rendering techniques. Implemented and optimized an improved texture space subsurface scattering algorithm, enhancing the visual fidelity of the company's rendering engine.
- Made significant contributions to the engine's standard deferred pipeline module, focusing on performance optimization and quality improvement. Particularly enhanced the subsurface scattering component, resulting in more accurate rendering of translucent materials.


== Publications and Preprints

#publication(
  title: "HotSpot: Screened Poisson Equation for Signed Distance Function Optimization",
  authors: ("Zimo Wang*", "Cheng Wang*", "Taiki Yoshino", "Sirui Tao", "Ziyang Fu", "Tzu-Mao Li"),
  conference: [_arXiv preprint 2024_],
)

#publication(
  title: "ZeroRF: Zero-shot Sparse View 360° Reconstruction",
  authors: ("Ruoxi Shi*", "Xinyue Wei*", "Cheng Wang", "Hao Su"),
  conference: [In Proceedings of _IEEE/CVF Conference on Computer Vision and Pattern Recognition 2024_],
)


== Thesis

#publication(
  title: "Near-Field Lighting Estimation via Ray Regression",
  authors: ("Cheng Wang", "Tzu-mao Li"),
  conference: [_Master Thesis_],
)
- This thesis approaches fast near-field lighting estimation by training a vision transformer to predict point light positions from a single observed image, using over-parameterized representations of point lights as rays corresponding to image patches. The proposed method, trained and evaluated on a custom dataset derived from OpenRooms, outperforms naive end-to-end models in predicting light positions, achieving deviations of around 0.35 and 0.38 of the scene scale compared to 0.60 for the naive method.


== Projects

#project(
  name: "Implementation of Tensorial Radiance Field (TensoRF)",
)
- Implemented TensoRF based on Chen et al.'s work, in which radiance fields are represented with matrix-vector and vector-vector tensor combinations. This approach achieves higher efficiency than MLP-based NeRF while maintaining comparable quality, without requiring customized CUDA implementations.

#project(
  name: "Autonomous Vehicle Motion Forecasting",
)
- Used deep learning models to forecast autonomous vehicle motion, predicting the positions of tracked objects three seconds into the future. The dataset includes trajectories from Pittsburgh and Miami, and the models incorporate inputs like positions and velocities over a short time frame. Explored different machine learning models including Linear Regression, LSTM, and Encoder-Decoder with Attention Mechanism. Based on extensive experiments, the LSTM model with positional data performed best, although improvements are suggested for better lane prediction and generalization.

#project(
  name: "Volumetric Path Tracer",
)
- Implemented a volumetric path tracer module based on the educational physically based renderer "lajolla", which efficiently handles multiple chromatic heterogeneous volumes and accurately simulates absorption and multiple scattering effects through the integration of phase function sampling and next event estimation techniques, resulting in more realistic and physically accurate volumetric renderings.

#project(
  name: "Real-Time Texture-Space Subsurface Scattering",
)
- Implemented an innovative and efficient method for real-time texture-space subsurface scattering, utilizing convolution of radiance maps and weight kernels in texture space. Optimized performance by pre-calculating weight kernels with Burley's normalized diffusion profile and applying wavelet transformation, resulting in a significant reduction in convolution time complexity.
- Awarded the Outstanding Graduation Thesis of Zhejiang University Undergraduates in 2022.

#project(
  name: "Cyber Creed",
)
- Developed a 3D third-person shooting game inspired by Assassin's Creed using Unreal Engine 4, showcasing advanced game development techniques and engine proficiency.
- Collaborated in a five-person team, taking primary responsibility for scene and level design, enemy animation and AI behavior design, and special effects design.

#project(
  name: "Tiled Forward Rendering",
)
- Implemented both tiled forward rendering and tiled deferred rendering pipelines based on research papers, demonstrating a deep understanding of modern real-time rendering techniques.
- Optimized the light culling pass through the implementation of multiple frustum division strategies and efficient light-frustum intersection algorithms.

== Skills
- *Programming Languages*: C/C++, Python, JavaScript, HTML/CSS, Bash
- *Technologies*: PyTorc, Git, Docker, Kubernetes, OpenGL, Unreal Engine, Blender, React, Tailwind CSS
- *Interests*: Badminton, Computer Games, Classical Music, Cooking