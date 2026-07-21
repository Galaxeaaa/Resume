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
== Work Experience

#work(
  title: "Computer Vision Research Engineer",
  location: "Remote",
  company: "Dandy",
  url: "www.meetdandy.com",
  dates: dates-helper(start-date: "Apr 2025", end-date: "June 2026"),
)

- Contributed to the prototyping and production deployment of a shade quality-control ML classification model (EfficientNet and CNN based) on a dental crown manufacturing line, taking ownership of the data pipeline.

  Diagnosed a bimodal L-value distribution in training data caused by inconsistent ambient lighting across imaging devices. Developed a color calibration algorithm, drove calibration hardware installation across imaging stations, and re-curated training data — improving recall from ~0.7 to ~0.9 at fixed classification threshold and enabling scalable rollout across all production lines.

- Led research-to-prototype development of a gradient-based optimization framework using differentiable rendering (Mitsuba) to recover physical material parameters of dental crowns from multi-view photographs, jointly optimizing volumetric properties (albedo, extinction coefficient, phase function) and surface BSDF.

  Targeted photorealistic pre-manufacturing visualization of crown appearance under arbitrary lighting, enabling patient preview before fabrication to reduce costly remakes and improve treatment satisfaction.

- Independently built and deployed a cross-platform (Mac/Windows) camera-based color measurement and calibration app (Python/PyQt, little-cms), based on a design co-developed with a color science expert, using a controlled box setup with black/white/background reference captures to eliminate lighting and background effects, replacing costly, time-consuming spectrophotometers and producing a labeled dataset for high-fidelity ink-to-print color space mapping.

  Validated on 9,000+ color samples with >95% within ΔE < 0.5 of professional spectrometer readings.
  
  Contributed 16-bit color conversion support to the open-source cmm-16bit library. 


#work(
  title: "Research Assistant",
  location: "San Diego, CA",
  company: "University of California San Diego",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Apr 2025"),
)
- Advised by Prof. Tzu-mao Li.
- Co-authored #link("https://zeamoxwang.github.io/HotSpot-CVPR25/")[HotSpot], a novel method to achieve robust neural SDF optimization from point cloud signal inspired by the relationship between heat diffusion in absorbing media and distance functions, published in proceedings of CVPR 2025.
- Contributed to #link("https://arxiv.org/abs/2510.18189")[A Generalizable Light Transport 3D Embedding for Global Illumination], which enabled global light transport modeling on millions of triangles by learning a scalable 3D embedding with point clouds and linear-complexity transformers to overcome memory bottlenecks.

#work(
  title: "Research Intern",
  location: "San Diego, CA",
  company: "SuLab, University of California San Diego",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Jan 2024"),
)
- Advised by Prof. Hao Su.
- Contributed to #link("https://arxiv.org/abs/2312.09249")[ZeroRF], a novel sparse view 360° reconstruction method based on NeRF, published in proceedings of CVPR 2024.

#work(
  title: "Software Engineer Intern",
  location: "Remote",
  company: "Electronic Arts",
  url: "www.ea.com",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Sep 2023"),
)
- Mentored by Steve Karolewics and Alex Lemke.
- Used and modified Unreal Engine 5 as a rendering intern on the Star Wars FPS team at Respawn Entertainment, collaborating with engineering and art teams to improve decal rendering support. Adapted an existing tiled decal pass into separate pre-GBuffer and post-GBuffer passes to enable more accurate and complex material blending for the art team.
- In remaining internship time, investigated Lumen global illumination, documenting costs and configurations of far-field lighting and reflections.

#work(
  title: "Rendering Engineer Intern",
  location: "Hangzhou, Zhejiang, China",
  company: "RaysEngine Tech Co. LTD",
  url: "www.raysengine.com",
  dates: dates-helper(start-date: "Dec 2021", end-date: "Jun 2022"),
)
- Implemented an improved texture-space subsurface scattering algorithm for digital human skin rendering, accelerating computation via wavelet transformation and a shared scattering kernel map.


== Publications and Preprints

#publication(
  title: "A Generalizable Light Transport 3D Embedding for Global Illumination",
  authors: ("Bing Xu", "Mukund Varma T", "Cheng Wang", "Tzumao Li", "Lifan Wu", "Bartlomiej Wronski", "Ravi Ramamoorthi", "Marco Salvi"),
  conference: [In Proceedings of _ACM SIGGRAPH 2026_],
  url: "https://arxiv.org/abs/2510.18189",
)

#publication(
  title: "HotSpot: Screened Poisson Equation for Signed Distance Function Optimization",
  authors: ("Zimo Wang*", "Cheng Wang*", "Taiki Yoshino", "Sirui Tao", "Ziyang Fu", "Tzu-Mao Li"),
  conference: [In Proceedings of _CVPR 2025_],
  url: "https://arxiv.org/abs/2411.14628",
)

#publication(
  title: "ZeroRF: Zero-shot Sparse View 360° Reconstruction",
  authors: ("Ruoxi Shi*", "Xinyue Wei*", "Cheng Wang", "Hao Su"),
  conference: [In Proceedings of _CVPR 2024_],
  url: "https://arxiv.org/abs/2312.09249",
)


== Thesis

#publication(
  title: "Near-Field Lighting Estimation via Ray Regression",
  authors: ("Cheng Wang", "Tzu-mao Li"),
  conference: [_Master Thesis_],
  url: "https://escholarship.org/uc/item/27v4090s",
)


== Education

#edu(
  institution: "University of California San Diego",
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




== Projects

#project(
  name: "Implementation of Tensorial Radiance Field (TensoRF)",
)
- Implemented TensoRF based on Chen et al.'s work, in which radiance fields are represented with matrix-vector and vector-vector tensor combinations. This approach achieves higher efficiency than MLP-based NeRF while maintaining comparable quality, without requiring customized CUDA implementations.

#project(
  name: "Autonomous Vehicle Motion Forecasting",
  url: "https://github.com/Galaxeaaa/cse251b-project",
)
- Developed deep learning models to forecast autonomous vehicle motion, predicting object positions three seconds ahead. Incorporated positions and velocities in real-world vehicle trajectories dataset. Explored Linear Regression, LSTM, and Encoder-Decoder with Attention Mechanism. LSTM with positional data performed best, with suggested improvements for lane prediction and generalization.

#project(
  name: "Volumetric Path Tracer",
  url: "https://github.com/Galaxeaaa/CSE272-lajolla",
)
- Implemented a volumetric path tracer module based on the educational physically based renderer "lajolla", which efficiently handles multiple chromatic heterogeneous volumes and accurately simulates absorption and multiple scattering effects through the integration of phase function sampling and next event estimation techniques, resulting in more realistic and physically accurate volumetric renderings.

#project(
  name: "Real-Time Texture-Space Subsurface Scattering",
  url: "https://github.com/Galaxeaaa/tssss",
)
- Implemented an efficient real-time texture-space subsurface scattering method, utilizing convolution of radiance maps and weight kernels in texture space. Optimized performance by pre-calculating weight kernels with Burley's normalized diffusion profile and applying wavelet transformation, resulting in a significant reduction in convolution time complexity.
- Awarded the Outstanding Graduation Thesis of Zhejiang University Undergraduates in 2022.

#project(
  name: "Cyber Creed",
)
- Developed a 3D third-person shooting game inspired by Assassin's Creed using Unreal Engine 4, showcasing advanced game development techniques and engine proficiency.
- Collaborated in a five-person team, taking primary responsibility for scene and level design, enemy animation and AI behavior design, and special effects design.

#project(
  name: "Petiu: Pet farewell service system",
)
- Developed the frontend of an iOS App "Petiu" written in Swift and SwiftUI, targeting to provide a platform for pet owners to commemorate their deceased pets through virtual memorials and farewell services.
- Awarded Third Prize in the China Collegiate Computing Contest -- Mobile Application Innovation Contest held by Apple and Zhejiang University in 2021.

// #project(
//   name: "Tiled Forward Rendering",
//   url: "https://github.com/Galaxeaaa/ForwardPlus",
// )
// - Implemented both tiled forward rendering and tiled deferred rendering pipelines based on research papers, demonstrating a deep understanding of modern real-time rendering techniques.
// - Optimized the light culling pass through the implementation of multiple frustum division strategies and efficient light-frustum intersection algorithms.

== Skills
- *General*: Data structures and algorithms, Probability and statistics, Linear algebra, Optimization
- *Languages*: Python, C/C++, TypeScript, Swift, JavaScript, HTML/CSS, Bash
- *ML / CV*: PyTorch, PyTorch Lightning, OpenCV, CUDA, NumPy, 3D Reconstruction, NeRF, Gaussian Splatting, Scikit-learn, Google Cloud 
- *Rendering*: Godot, Unreal Engine, Mitsuba, OpenGL, Blender
- *Tools*: AI-assisted development (Claude Code, Cursor), Git, Docker, Kubernetes, Linux, Weights & Biases, TensorBoard, React, Tailwind CSS