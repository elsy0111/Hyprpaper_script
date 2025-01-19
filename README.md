<div align="left" style="position: relative;">
<h1>Hyprpaper_Script</h1>
	
<img src="https://logolist.net/wp-content/uploads/2024/04/favicon.svg" align="right" width="10%">
<p align="left">
	<em>change wallpaper more comfortable using this shell script !</em>
</p>
<p align="left">
	<img src="https://img.shields.io/github/license/elsy0111/Hyprpaper_script?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/elsy0111/Hyprpaper_script?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/elsy0111/Hyprpaper_script?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/elsy0111/Hyprpaper_script?style=default&color=0080ff" alt="repo-language-count">
</p>
<p align="left"><!-- default option, no dependency badges. -->
</p>
<p align="left">
	<!-- default option, no dependency badges. -->
</p>
</div>
<br clear="right">

## 📍 Overview

Hyprpaperscript simplifies setting wallpapers for multiple monitors with ease. Select wallpapers from a directory for each monitor interactively. Exit anytime during selection. Ideal for users managing wallpapers across multiple screens effortlessly.

## 📁 Project Structure

```sh
└── Hyprpaper_script/
    ├── LICENSE
    └── wall.sh
```

<blockquote>
  <table>
  <tr>
    <td><b><a href='https://github.com/elsy0111/Hyprpaper_script/blob/master/wall.sh'>wall.sh</a></b></td>
    <td>- Implements a script to set wallpapers for multiple monitors interactively using Hyprland<br>- Allows users to select wallpapers from a specified directory for each detected monitor<br>- Provides an option to exit the script during the selection process.</td>
  </tr>
  </table>
</blockquote>

## 🚀 Getting Started

### ⚙️ Installation

Install Hyprpaper_script using one of the following methods:

1. Clone the Hyprpaper_script repository:
```sh
git clone https://github.com/elsy0111/Hyprpaper_script
cd Hyprpaper_script
```

2. Make the Script Executable
```bash
chmod +x wall.sh
```

## 🤖 Usage
Run Hyprpaper_script using the following command:
```bash
./wall.sh
```
#### Exit During Selection
Press `q` at any time during the wallpaper selection to exit the script.

#### Directory Setup
The script looks for wallpapers in `~/Pictures/wall` by default. To change the directory:
1. Open the script in a text editor.
2. Modify the value of `directory`:
   ```bash
   directory=/path/to/your/wallpapers
   ```
#### Help Menu
To display the help menu, provide any argument to the script:
```bash
./wall.sh --help
```

## 🔰 Contributing

- **🐛 [Report Issues](https://github.com/elsy0111/Hyprpaper_script/issues)**: Submit bugs found or log feature requests for the `Hyprpaper_script` project.
- **💡 [Submit Pull Requests](https://github.com/elsy0111/Hyprpaper_script/pulls)**: Review open PRs, and submit your own PRs.

## 🎗 License

This project is protected under the `MIT` License. For more details, refer to the [LICENSE file](https://github.com/elsy0111/Hyprpaper_script/blob/master/LICENSE).
