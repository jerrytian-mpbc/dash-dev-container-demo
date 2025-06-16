# Dash Demo in a Dev Container

This project is a simple demo to showcase developing a Python Dash application **inside a Visual Studio Code Dev Container**. It demonstrates how to set up, develop, and run a Dash app using Docker and VS Code's Dev Containers feature.

## Purpose

- **Demonstrate**: How to use VS Code Dev Containers for Python web app development.
- **Showcase**: A minimal Dash app for interactive data visualization.
- **Provide**: A reproducible, containerized development environment.

---

## Features

- Interactive Dash app displaying population data by country (Gapminder dataset)
- Fully containerized with Docker
- Ready-to-use VS Code Dev Container configuration
- Minimal dependencies for fast setup

---

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

---

### Quick Start (Recommended: Dev Container)

1. **Clone this repository:**
   ```bash
   git clone <repository-url> dash-demo
   cd dash-demo
   ```

2. **Open in VS Code.**

3. **Reopen in Container**  
   When prompted by VS Code, select:  
   `Reopen in Container`

   VS Code will build the container using the provided `Dockerfile` and set up the Python environment.

4. **Run the app:**
   - Open a terminal in VS Code (inside the container)
   - Run:
     ```bash
     python dash_plotting_demo.py
     ```
   - Open your browser at [http://localhost:8050](http://localhost:8050)

---

### Running with Docker (without Dev Container)

1. **Build the Docker image:**
   ```bash
   docker build -t dash-demo .
   ```

2. **Run the container:**
   ```bash
   docker run -p 8050:8050 dash-demo
   ```

3. **Visit** [http://localhost:8050](http://localhost:8050)

---

## Project Structure

```
dash-demo/
├── .devcontainer/
│   └── devcontainer.json   # VS Code Dev Container config
├── dash_plotting_demo.py   # Main Dash app
├── Dockerfile              # Docker build instructions
├── .gitignore
└── README.md
```

---

## About the Demo App

- Uses [Dash](https://dash.plotly.com/) for the web UI
- Loads population data from the Gapminder dataset
- Lets you select a country and view its population over time

---

## Why Dev Containers?

- **Consistency**: Everyone gets the same environment
- **Isolation**: No need to install Python or dependencies locally
- **Productivity**: Use VS Code features (linting, debugging, etc.) inside the container

---

## License

MIT License

---

**Happy coding in containers!** 🚀