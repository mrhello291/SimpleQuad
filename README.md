# 🤖 Simple Quad — Budget-Friendly Quadruped Robot for Hilly Terrain

**Simple Quad** is a significantly simplified and cost-effective version of the Dingo Quadruped, designed and developed by a team of second-year undergraduates. Our goal was to prove that quadruped robotics is achievable at a student level with constrained resources — without compromising on core functionality or real-world applicability.

![Simple Quad in action](https://github.com/user-attachments/assets/2f257c5f-0329-46a6-ab44-8f4bbac6c672)

---


## 🚀 Project Vision

Quadrupeds like the **Dingo** are incredible — but expensive and complex. Simple Quad is our take on the idea that:

> ✨ _"Even undergraduates on a budget can replicate high-end quadrupeds with smart design trade-offs and DIY ingenuity."_

This robot was built with the **goal of navigating hilly terrain**, such as the uneven landscapes surrounding our IIT campus. That meant not just making it walk — but building it rugged enough to handle slopes, soft ground, and unstructured paths. 


---

## 🛠️ Key Modifications from Dingo Quadruped

| Category             | Dingo                            | Simple Quad (Our Build)                    |
|----------------------|----------------------------------|--------------------------------------------|
| **Controller**        | Arduino Nano + Raspberry Pi     | ❌ Removed Arduino Nano — RPi 4B only       |
| **Servos**            | High-end                        | Standard 12 PWM servos                     |
| **Power**             | Central power with regulators   | ✅ Battery with dual buck converters        |
| **Design**            | CNC, hardened frame             | 🛠️ Soft aluminum legs, 2mm aluminum sheet chassis |
| **Terrain Target**    | Lab/Demo                        | ✅ Hilly / uneven terrain support           |
| **Sensors**           | Lidar, camera, LCD              | ✅ Camera; Lidar & LCD are future prospects |
| **Remote**            | Custom controller               | ✅ DualShock 4 over Bluetooth               |
| **Servo Driver**      | Via Arduino                     | ✅ Directly via PCA9685 to RPi             |

---

## 🔩 Materials & Design Rationale

- **Legs:** Made from **soft aluminum** to provide shock absorption and flexibility while walking on sloped surfaces.
- **Body:** Built using a **2mm aluminum sheet** to ensure a balance between weight and structural integrity.
- **Chassis:** Laser-cut and modular, allowing quick iteration and repair.

These materials were chosen to provide decent ruggedness for outdoor environments without inflating cost or weight, though we acknowledge several areas for mechanical refinement.

---

## 🔌 System Architecture

### 🧠 Core Hardware:
- **Raspberry Pi 4B** – acts as the central brain
- **12x Servo Motors** – controlled via PCA9685
- **DualShock 4 Controller** – for manual input
- **Camera Module** – for future vision tasks
- **Lidar + LCD** – not fully integrated yet (planned)

### ⚡ Power Setup:
- **Battery Pack** → Two Buck Converters:
  - **One for Servos** (5–6V)
  - **One for RPi & peripherals**

Everything is grounded and powered from the RPi to simplify the wiring — the Arduino Nano was deemed unnecessary and thus removed.

---

## 📹 Demo Videos
>All videos [here](https://drive.google.com/drive/folders/1dnnFLZWygSIIR1WF50Ek8o8b16W5Pwsc?usp=sharing) 
Click the thumbnails below to watch Simple Quad in action:

<div align="center">

<a href="https://www.youtube.com/watch?v=v2JReG7R9UY">
  <img src="https://img.youtube.com/vi/v2JReG7R9UY/0.jpg" width="480" alt="Video 1 Thumbnail"/>
</a>
<br>
<em>▶️ Click the image above to watch Video 1 on YouTube</em>

<br><br>

<a href="https://www.youtube.com/shorts/QS4pmNzX9w0">
  <img src="https://img.youtube.com/vi/QS4pmNzX9w0/0.jpg" width="480" alt="Video 2 Thumbnail"/>
</a>
<br>
<em>▶️ Click the image above to watch Video 2 on YouTube</em>

</div>

---

## ⚙️ Software Stack

- **Python** for all control logic
- **Gazebo** for simulation
- **PCA9685 Driver** for PWM control
- **IMU** component libraries for controlling accelerometer, gyrometer and magnetometer (used because it fixed drifts)
- Sensor fusion and vision pipelines are reserved for future work

---

## 📉 Current Limitations

- **Movement was functional but jerky** – traced back to flaws in mechanical design rather than control logic
- **Lidar and LCD are not integrated** – they’re wired, but software support isn’t complete
- **Limited gait options** – currently robot can trot and rest. Need to refine trotting and add more gaites

---

## 🔭 Future Improvements

- ✅ **Mechanical Design Overhaul**  
  Improve joint articulation, reinforce weak links, and fix center-of-gravity issues to improve gait smoothness.

- 🦿 **Trot Gait Optimization**  
  Fine-tune servo timings and phase offsets to produce a stable, energy-efficient trot gait for uneven terrain.

- 🧠 **New Gait Implementations**  
  Integrate additional gait patterns (crawl, pace, bound) to adapt dynamically to different terrain conditions.

- 🤖 **RL-based Control Algorithms**  
  Replace manual gaits with Reinforcement Learning models for adaptive and terrain-aware walking for a seperate autonomous mode and refined leg movement.

- 🔌 **Full Sensor Integration**  
  Add Lidar for obstacle detection and LCD for real-time telemetry and system feedback.

- 🔋 **Battery Optimization**  
  Improve efficiency and thermal management for extended operation.

---

## 🙌 Credits

Developed by second-year B.Tech CSE students as a demonstration that advanced robotics can be built with resourcefulness and passion.

Inspired by [Dingo Quadruped](https://github.com/robomechatrons/dingo-robot) and adapted to suit tighter constraints and rougher terrain.

[@mrhello291](https://github.com/mrhello291) [@PreetamKB1](https://github.com/PreetamKB1)
---

