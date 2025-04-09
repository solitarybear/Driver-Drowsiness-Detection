# 🚗 Driver Drowsiness Detection Using MATLAB (Camera-Based)

A simple yet powerful system that detects driver drowsiness using real-time webcam input and alerts the user when prolonged eye closure is detected.

---

## 📌 Objective

This project uses **MATLAB's Computer Vision Toolbox** to:
- Detect eyes using Haar Cascade classifiers.
- Monitor real-time webcam feed.
- Alert the driver with a sound if eyes remain closed for a suspiciously long time (drowsiness indication).

---

## 🔧 Tools & Requirements

- **Language:** MATLAB
- **Toolbox Required:** Computer Vision Toolbox
- **Hardware:** Any basic webcam and speaker/headphone output
- **Platform Compatibility:** Windows / macOS with MATLAB installed

---



---

## ▶️ How It Works

1. Starts the webcam and runs a live video feed.
2. Uses `vision.CascadeObjectDetector('EyePairBig')` to detect eyes.
3. If the eyes aren't detected for a set number of frames (default: 20), the system considers this as **drowsiness**.
4. An **alert sound** is triggered to warn the driver.

---

## 💡 Key Features

- Real-time webcam monitoring
- Haar cascade-based eye detection
- Sound alert for safety
- Runs entirely on MATLAB
- Customizable detection threshold

---

## 🎯 Use Case

This project mimics a real-world safety feature found in **driver-assistance systems** and **autonomous vehicles**, making it perfect for students interested in:
- Robotics
- AI & Computer Vision
- Embedded and real-time systems
- Human-machine safety interactions

---

## 📸 Preview

![sample_output](sample_output.png)  
*Above: Sample output showing eye detection and status message.*

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 👨‍💻 Created by
**GitHub:** [solitarybear](https://github.com/solitarybear)

---
